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
    Bill.find(params[:id]).update(status: "Invoiced", user_action: "Invoiced", channel_used: "Mpesa", channel_response:  (0...8).map { (65 + rand(26)).chr }.join)
    # response = RestClient::Request.execute(
    #   method: :post,
    #   url: 'http://processor.nouveta.co.ke/index.php',
    #   params: {PhoneNumber: "0728592629", paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: 1, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"},
    #   headers: {api_key: 'a94a8fe5ccb19ba61c4c0873d391e987982fbbd3'}
    # )
    # a = RestClient.post 'http://processor.nouveta.co.ke/index.php', {PhoneNumber: "0728592629", paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: 1, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"}

    resource = RestClient::Resource.new(
      "http://processor.nouveta.co.ke/index.php",
      :timeout => 1,
      :open_timeout => 1)
    response = resource.get :params => {PhoneNumber: "0728592629", paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: 1, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"}

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
