Rails.application.routes.draw do
  resources :sunscreen, only:[:index,:show]
  resources :about, only: [:index]
  root "sunscreen#index"
  get '/naked' => "sunscreen#naked"
  get '/burnt' => "sunscreen#burnt"
end
