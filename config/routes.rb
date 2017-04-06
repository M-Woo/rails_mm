Rails.application.routes.draw do
  root 'home#index'
  resources :partys
  resources :clowns
end
