Rails.application.routes.draw do
#  devise_for :engineers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  devise_for :engineers, :controllers => { omniauth_callbacks: "engineers/omniauth_callbacks", :registrations => "registrations" }



end
