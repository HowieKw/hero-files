Rails.application.routes.draw do
  
  resources :backgrounds
  resources :appearances
  resources :powerstats
  resources :favorite_heros
  resources :likes, only: [:create]
  resources :comments
  resources :superheros
  resources :users
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
