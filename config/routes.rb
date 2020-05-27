# frozen_string_literal: true

Rails.application.routes.draw do

  resources :zats, :artists, :studios

  devise_for :engineers, controllers: { omniauth_callbacks: 'engineers/omniauth_callbacks', registrations: 'registrations', sessions: 'engineers/sessions', sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
#devise_for :engineers, controllers: { sessions: 'engineers/sessions' }
 # resources :engineers #do
    #root 'zats#index' 
    get '/engineers/sign_out' => 'engineers/sessions#destroy'
#    get '/signout' => 'sessions#destroy'
  #  match '/engineers',   to: 'engineers#index',   via: 'get'
  #end
  #devise_for :engineers, :controllers => { :registrations => 'engineers' }

  #resources :engineers do
 #   resources :zats # , only: :create
  #end
  resources :artists do
    resources :zats # , only: :create
  end
  resources :studios do
    resources :zats # , only: :create
  end


  
end



  #resources :engineers
 #   get 'engineers', to: 'engineers#index', as: 'index'

  #  get 'zats/:id', to: 'zats#show', as: 'session'
  # get 'zats/index'
  #  devise_for :engineers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'zats/:id/edit', to: 'zats#edit', as: :edit_zat
  # patch 'zats/:id', to: 'zats#update'

  #  get 'studios/index'
  # get 'engineers/:id/zats/:zats_id'

  # resources :engineers do
  #   resources :zats
  #  end


   
