class BillerController < ApplicationController

  def index
    @sbp = Bill.where(service: "SBP")
    @lr = Bill.where(service: "LR")
    @ad = Bill.where(service: "AD")
    @lz = Bill.where(service: "LZ")
  end

  def push
    RestClient.post 'http://processor.nouveta.co.ke/index.php', {PhoneNumber: '0728592629', paymentMode: 'Mpesa', AccountReference: 'Biller', Amount: 1222, api_key: "a94a8fe5ccb19ba61c4c0873d391e987982fbbd3"}
    respond_to do |format|
      root_url
    end
  end

  def send_sms

  end

  def send_email

  end

end
