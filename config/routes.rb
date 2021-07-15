Rails.application.routes.draw do
  
  # resources :entries
  # resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  post "/users", to: 'users#create'
  post "/login", to: 'users#login'
  get "/me", to: "users#me"
  
  delete "/entries/:id", to: "entries#destroy"
  patch "/entries/:id", to: "entries#update"
  post "/entries", to: 'entries#create'
end
