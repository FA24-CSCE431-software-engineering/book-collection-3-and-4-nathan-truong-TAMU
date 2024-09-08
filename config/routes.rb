# frozen_string_literal: true

Rails.application.routes.draw do
  resources :books do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

    # Defines the root path route ("/")
    root "books#index"
    member do
      get :delete
    end
  end
end
