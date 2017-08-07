Rails.application.routes.draw do
  resources :meteos
  root to: 'meteos#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
