Rails.application.routes.draw do
  get 'zats/index'
#  devise_for :engineers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

resources :artists #, :videos
resources :studios do
  resources :zats
end

#get 'engineers/:id/zats/:zats_id'


  devise_for :engineers, :controllers => { omniauth_callbacks: "engineers/omniauth_callbacks", :registrations => "registrations" }



end
