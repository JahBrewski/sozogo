Rails.application.routes.draw do
  resources :churches
  get "/" => 'home#index'
  get "/new-session" => "sessions#new"
  post "/create-session" => "sessions#create"
  get "/destroy-session" => "sessions#destroy"
end
