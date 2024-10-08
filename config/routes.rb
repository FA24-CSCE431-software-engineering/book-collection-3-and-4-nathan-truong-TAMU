# frozen_string_literal: true

Rails.application.routes.draw do
  resources :user_books
  resources :users
  resources :books do
    # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
    member do
      get :delete
    end
  end

  # Defines the root path route ("/")
  root "user_books#index"
end
