Rails.application.routes.draw do
  
  resources :runs, only: [:index, :create, :show, :update, :destroy]

  resources :users

  get "/fastest_mile", to: "runs#fastest_mile"

  get "/longest_run", to: "runs#longest_run"

  get "/find_heartrate", to: "runs#find_heartrate"

  get "/me", to: "users#show"

  post "/signup", to: "users#create"

  post "/login", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"
  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
