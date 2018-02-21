Rails.application.routes.draw do
  resources :meteo_stations
  devise_for :users
  resources :meteos
  resources :users
  root to: 'meteos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
