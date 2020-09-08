@extends('layouts.site')
@section('content')

    <div class="row content_box">

        <div class="header_order">

            <div style="padding-top:40px">



                <div class="first_div_order_header">

                    <div class="clearfix">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>

                    <span class="bullet login green tick">
                        <a>
                            <span>ورود به دیجی آنلاین</span>
                        </a>
                    </span>

                    <div class="rounded_rectangle_over step_shipping"></div>


                    <span class="bullet login green tick">
                        <a>

                            <span> اطلاعات ارسال سفارش</span>
                        </a>
                    </span>


                    <div class="rounded_rectangle_over step_shipping line_order"></div>

                    <span class="bullet login green tick">
                        <a>
                            <span>بازبینی سفارش</span>
                        </a>
                    </span>


                    <div class="rounded_rectangle_over step_shipping line_order"></div>

                    <span class="bullet login green">
                        <a>
                            <span>اطلاعات پرداخت</span>
                        </a>
                    </span>

                    <div class="clearfix gray">
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                    </div>

                </div>


            </div>
        </div>


        <div style="width:95%;margin:50px auto">


            @if(Session::has('error'))
                <div class="alert alert-danger">
                    {{ Session::get('error') }}
                </div>
            @endif


            <p>
                <span class="icon_item_name"></span><span style="padding-right:5px;">شیوه پرداخت</span>
            </p>
            <form action="{{ url('Payment') }}" method="post">

                {{ csrf_field() }}


                <table id="tab_payment_1" class="tbl_payment pay_type_table">

                    <tr>
                        <td style="width: 40px;">
                            <div class="radio-control2" id="pay_radio_1" onclick="set_pay(1)">
                                <label></label>
                            </div>
                        </td>
                        <td>
                            <p>
                                پرداخت اینترنتی ( با تمامی کارت‌های عضو شتاب )
                            </p>

                            <div>

                                <div class="radio-control first_pay_div" id="pay_radio_2" onclick="set_pay(2)">
                                    <label></label>
                                    <span>درگاه پرداخت اینترنتی بانک سامان</span>
                                    <input type="radio"  id="post_radio_2"  class="pay_radio" value="2" name="pay_radio">
                                </div>


                                <div class="radio-control2"  id="pay_radio_3" onclick="set_pay(3)">
                                    <label></label>
                                    <span>درگاه پرداخت اینترنتی بانک ملت</span>
                                    <input type="radio"  id="post_radio_3" checked="checked" class="pay_radio" value="3" name="pay_radio">
                                </div>

                                <div class="radio-control" id="pay_radio_4" onclick="set_pay(4)">
                                    <label></label>
                                    <span>درگاه پرداخت اینترنتی زرین پال</span>
                                    <input type="radio" id="post_radio_4" class="pay_radio" value="4" name="pay_radio">
                                </div>
                            </div>
                        </td>
                    </tr>

                </table>

                <table id="tab_payment_5" class="tbl_payment">

                    <tr>
                        <td style="width: 40px;">
                            <div class="radio-control" id="pay_radio_5" onclick="set_pay(5)">
                                <label></label>
                                <input type="radio" id="post_radio_5" class="pay_radio" value="5" name="pay_radio">
                            </div>
                        </td>
                        <td>
                            <p>
                                پرداخت در محل
                            </p>
                            <p>
                                برای سفارشهایی که از طریق باربری ارسال میشوند یا مبلغ آنها بیشتر از سی میلیون ریال است، لازم است یکی از روشهای پرداخت اینترنتی یا کارت به کارت، انتخاب و پیش از ارسال، مبلغ آنها تسویه شود
                            </p>
                        </td>
                    </tr>

                </table>


                <table id="tab_payment_6" class="tbl_payment">

                    <tr>
                        <td style="width: 40px;">
                            <div class="radio-control" id="pay_radio_6" onclick="set_pay(6)">
                                <label></label>
                                <input type="radio" id="post_radio_6" class="pay_radio" value="6" name="pay_radio">
                            </div>
                        </td>
                        <td>
                            <p>
                                کارت به کارت
                            </p>
                            <p>
                                شما می توانید وجه سفارش خود را بصورت انتقال وجه کارت به کارت پرداخت نموده و حداکثر تا 24 ساعت پس از سفارش اطلاعات آن را ثبت نمایید.
                            </p>
                        </td>
                    </tr>

                </table>

                <table id="tab_payment_7" class="tbl_payment">

                    <tr>
                        <td style="width: 40px;">
                            <div class="radio-control" id="pay_radio_7" onclick="set_pay(7)">
                                <label></label>
                                <input type="radio" id="post_radio_7" class="pay_radio" value="7" name="pay_radio">
                            </div>
                        </td>
                        <td>
                            <p>
                                واریز به حساب
                            </p>
                            <p>
                                شما می توانید وجه سفارش خود را از طریق مراجعه به شعب بانک به حساب شرکت فن آوازه واریز کرده و تا حداکثر 24 ساعت پس از سفارش اطلاعات آن را ثبت نمایید.                            </p>
                        </td>
                    </tr>

                </table>



                <div class="form-group" style="float: left;margin-top:40px;margin-bottom:30px">

                    <input type="submit" value="ثبت سفارش" class="btn btn-success">

                </div>

            </form>

        </div>

    </div>
@endsection
