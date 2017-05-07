Rails.application.routes.draw do
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: :logout
  root "sessions#index"

  resources :users do
    resources :orders
  end

  resources :companies do
    resources :users
  end

end
