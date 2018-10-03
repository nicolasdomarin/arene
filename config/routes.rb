Rails.application.routes.draw do
  resources :spectacles
  resources :fichiers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'fichiers#index'
end
