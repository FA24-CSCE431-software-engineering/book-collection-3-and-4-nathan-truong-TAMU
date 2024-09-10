# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :books do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    member do
      get :delete
    end
  end

  # Defines the root path route ("/")
  root "books#index"
end
