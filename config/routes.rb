Rails.application.routes.draw do
  devise_for :admin
  devise_for :customer
    namespace :admin do
  	get '/' => "home#top"
  	resources :products,only: [:index,:new,:create,:show,:edit,:update]
  	resources :genres,only: [:index,:create,:edit,:update]
  	resources :customers,only: [:index,:show,:edit,:update]
  	resources :orders,only: [:index,:show,:update]
  	resources :order_details,only: [:update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
