Chik::Application.routes.draw do
  resources :downloads

  resources :images

  resources :enquiries

  get "contact/index"
  resources :buy_actions

  resources :involvement_actions

  resources :events

  resources :background_images

  get "admin" => 'admin#index'
  resources :content_items

  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end