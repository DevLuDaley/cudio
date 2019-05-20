# frozen_string_literal: true

Rails.application.routes.draw do
  resources :zats, :artists, :studios
  resources :artists do
    resources :zats # , only: :create
  end

  devise_for :engineers, controllers: { omniauth_callbacks: 'engineers/omniauth_callbacks', registrations: 'registrations' }

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
end
