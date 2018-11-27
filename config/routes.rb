Rails.application.routes.draw do
  root 'biller#index'
  post '/import' => 'biller#import', as: :import
  post '/push/:id' => 'biller#push', as: :push
  get '/sms' => 'biller#send_sms', as: :sms
  get '/email' => 'biller#send_email'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
