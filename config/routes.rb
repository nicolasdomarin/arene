Rails.application.routes.draw do
  resources :spectacles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'fichier#index'
end
