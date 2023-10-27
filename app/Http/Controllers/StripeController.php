<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use Session;
use Auth;
use App\User;
use App\Transactions;
use App\SubscriptionPlan;
use App\Properties;
use Cartalyst\Stripe\Laravel\Facades\Stripe;
use Stripe\Error\Card;

class StripeController extends Controller
{
    public function payWithStripe()
    {
        return view('pages.paywithstripe');
    }

    public function postPaymentWithStripe(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'stripeToken' => 'required',
        ]);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $user_id = Auth::user()->id;
        $plan_id = Session::get('plan_id');
        $payment_property_id = Session::get('payment_property_id');

        $plan_info = SubscriptionPlan::where('id', $plan_id)->where('status', '1')->first();
        $plan_name = $plan_info->plan_name;
        $plan_days = $plan_info->plan_days;
        $plan_amount = $plan_info->plan_price;

        $currency_code = getcong('currency_code') ? getcong('currency_code') : 'USD';

        $user = User::findOrFail($user_id);
        $property_obj = Properties::findOrFail($payment_property_id);

        $stripe = Stripe::make(getcong('stripe_secret_key'));

        try {
            $charge = $stripe->charges()->create([
                'source' => $request->input('stripeToken'),
                'currency' => $currency_code,
                'amount' => $plan_amount,
                'description' => $plan_name,
            ]);

            if ($charge['status'] == 'succeeded') {
                $property_obj->active_plan_id = $plan_id;
                $property_obj->property_exp_date = strtotime(date('m/d/Y', strtotime("+$plan_days days")));
                $property_obj->status = 1;
                $property_obj->save();

                $tax_amount = ($plan_amount * getcong('tax_percentage')) / 100;
                $total_amount = $plan_amount + $tax_amount;

                $payment_trans = new Transactions;
                $payment_trans->property_id = $payment_property_id;
                $payment_trans->user_id = $user_id;
                $payment_trans->email = $user->email;
                $payment_trans->plan_id = $plan_id;
                $payment_trans->gateway = 'Stripe';
                $payment_trans->payment_amount = $plan_amount;
                $payment_trans->tax_amount = $tax_amount;
                $payment_trans->total_payment_amount = $total_amount;
                $payment_trans->payment_id = $charge['id'];
                $payment_trans->date = strtotime(date('m/d/Y H:i:s'));
                $payment_trans->save();

                Session::forget('payment_property_id');
                Session::forget('plan_id');
                Session::flash('success', trans('words.payment_success'));

                // Send payment success email
                $data_email = [
                    'name' => $user->name,
                ];

                if (getenv('MAIL_USERNAME')) {
                    \Mail::send('emails.payment_success', $data_email, function ($message) use ($user) {
                        $message->to($user->email, $user->name)
                            ->from(getcong('site_email'), getcong('site_name'))
                            ->subject(trans('words.property_payment_done'));
                    });
                }

                return redirect('my_properties');
            } else {
                Session::forget('payment_property_id');
                Session::forget('plan_id');
                Session::flash('error_flash_message', 'Money not added to the wallet!');
                return redirect()->back()->withInput();
            }
        } catch (Exception $e) {
            Session::flash('error_flash_message', $e->getMessage());
            return redirect()->back()->withInput();
        } catch (CardErrorException $e) {
            Session::flash('error_flash_message', $e->getMessage());
            return redirect()->back()->withInput();
        } catch (MissingParameterException $e) {
            Session::flash('error_flash_message', $e->getMessage());
            return redirect()->back()->withInput();
        }

        Session::flash('error_flash_message', 'All fields are required!');
        return redirect()->back()->withInput();
    }
}
