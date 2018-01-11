Rails.application.routes.draw do
  resources :blood_donates
  resources :notifications
  resources :user_queries
  resources :blood_requests
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "static_pages#home"
end
