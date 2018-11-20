Rails.application.routes.draw do
  root 'biller#index'
  post '/push' => 'biller#push'
  get '/sms' => 'biller#send_sms'
  get '/email' => 'biller#send_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
