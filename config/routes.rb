Rails.application.routes.draw do
  resources :blood_donates
  resources :notifications
  resources :user_queries
  resources :blood_requests


   devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'        
      }
  get "about", to: "static_pages#about"
  get "contact", to: "static_pages#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root  "static_pages#home"
end


