# frozen_string_literal: true

Rails.application.routes.draw do


  devise_for :engineers, controllers: { omniauth_callbacks: 'engineers/omniauth_callbacks', registrations: 'registrations' }
  devise_scope :engineer do
    get 'login', to: 'devise/sessions#new'
  end
  
  devise_scope :engineer do
    get 'signup', to: 'devise/registrations#new'
    
  end
  
  resources :engineers #do
    root 'zats#index' 
    get '/logout' => 'application#destroy'
  #  match '/engineers',   to: 'engineers#index',   via: 'get'
  #end
  #devise_for :engineers, :controllers => { :registrations => 'engineers' }

  resources :engineers do
    resources :zats # , only: :create
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


    resources :zats, :artists, :studios
  resources :artists do
    resources :zats # , only: :create
  end

  resources :studios do
    resources :zats # , only: :create
  end
end
