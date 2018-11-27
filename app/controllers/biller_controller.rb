class BillerController < ApplicationController

  def index
    @motor = Bill.where(service: "Motor Insurance")
    @health = Bill.where(service: "Health Insurance")
    @general = Bill.where(service: "General Insurance")
    @life = Bill.where(service: "Life Insurance")
    @education = Bill.where(service: "Education Insurance")
  end

  def import
    Bill.import(params[:file])

    redirect_to root_url, notice: 'Policies imported.'
  end

  def dashboard

  end

  def my_callback(a, b, c, status_code)
  puts "did stuff with #{a}, #{b}, #{c} and got #{status_code}"
  redirect_to root_url
  end

  def do_stuff(a, b, c, callback)
    sum = a + b + c
    callback.call(a, b, c, sum)
  end


  def push
    mpesa_number = Bill.find(params[:id]).mpesa_number
    amount = Bill.find(params[:id]).amount
    Bill.find(params[:id]).update(status: "Invoiced", user_action: "Invoiced", channel_used: "Mpesa", channel_response:  (0...8).map { (65 + rand(26)).chr }.join)
    resource = RestClient::Resource.new("http://processor.nouveta.co.ke/index.php")
    response = resource.get :params => {PhoneNumber: "0728592629", paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: 1, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"}

    a = 1
    b = 2
    c = 3


    do_stuff(a, b, c, method(:my_callback))
  end


  def send_sms
    sms_client = OneApi::SmsClient.new('info@nouveta.tech', 'N0uv3t4.2018!')
    sms = OneApi::SMSRequest.new
    sms.sender_address = '38598123456'
    sms.address = '0728592629'
    sms.message = 'Test message'
    sms.callback_data = 'Any string'
    result = sms_client.send_sms(sms)
    # client_correlator = result.client_correlator
    # delivery_status = sms_client.query_delivery_status(client_correlator)
    redirect_to root_url, notice: "SMS Sent"

  end

  def send_email

  end

end
