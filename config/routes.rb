Rails.application.routes.draw do
  get 'zats/index'
#  devise_for :engineers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get 'zats/:id/edit', to: 'zats#edit', as: :edit_zat
patch 'posts/:id', to: 'posts#update'

resources :artists #, :videos
resources :studios
resources :zats

#get 'engineers/:id/zats/:zats_id'


  devise_for :engineers, :controllers => { omniauth_callbacks: "engineers/omniauth_callbacks", :registrations => "registrations" }



end
