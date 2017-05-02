Rails.application.routes.draw do
  get "/login" => "sessions#new"
  post "/login" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: :logout
  root "orders#show"
  resources :users do
    resources :orders
  end

end
