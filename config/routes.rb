Rails.application.routes.draw do
  
  resources :runs, only: [:index, :create, :show, :update, :destroy]

  resources :users

  get "/fastest_mile", to: "runs#fastest_mile"

  
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
