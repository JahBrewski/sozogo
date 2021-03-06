Rails.application.routes.draw do
  resources :users
    
  resources :organizations, controller: 'users', type: 'Organization'
  resources :volunteers, controller: 'users', type: 'Volunteer'
  resources :projects
  resources :signups

  namespace :users do
    get ':user_id/projects', to: 'projects#index', as: 'projects'
  end

  get "/" => 'home#index'
  get "/new-session" => "sessions#new"
  post "/create-session" => "sessions#create"
  get "/destroy-session" => "sessions#destroy"
  get "/about" => "home#about"
  get "/signup" => "home#signup", as: "signup_user"
  get "/donate" => "home#donate"
  get '/status', to: 'server#status'
end
