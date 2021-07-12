Rails.application.routes.draw do
  
  # resources :entries
  # resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  get "/home", to: "users#home"
  post "/signup", to: 'users#create'
  post "/login", to: 'users#login'
end
