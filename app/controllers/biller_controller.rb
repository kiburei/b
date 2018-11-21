class BillerController < ApplicationController

  def index
    @sbp = Bill.where(service: "SBP")
    @lr = Bill.where(service: "LR")
    @ad = Bill.where(service: "AD")
    @lz = Bill.where(service: "LZ")
  end

  def dashboard

  end

  def push
    mpesa_number = Bill.find(params[:id]).mpesa_number
    amount = Bill.find(params[:id]).amount
    RestClient.post 'http://processor.nouveta.co.ke/index.php', {PhoneNumber: mpesa_number, paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: amount, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"}
    Bill.find(params[:id]).update(status: "STK Request", user_action: "Invoiced", channel_used: "Mpesa")
    redirect_to root_url
  end

  def callback
    Bill.find(params[:id]).update(status: "STK Request", user_action: "Invoiced", channel_used: "Mpesa", third_party_ref_no: "", channel_response: "")
  end

  def send_sms

  end

  def send_email

  end

end
