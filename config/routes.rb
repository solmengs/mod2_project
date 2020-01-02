Rails.application.routes.draw do
  resources :tournaments
  resources :games
  resources :players
  resources :teams
  resources :tournament_teams
  root to: "tournament_teams#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/login', to: "auth#login"
  post '/login', to: "auth#verify"
end
