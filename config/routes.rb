Rails.application.routes.draw do
  resources :sunscreen, only:[:index,:show]
  resources :about, only: [:index]
  root "sunscreen#index"
end
