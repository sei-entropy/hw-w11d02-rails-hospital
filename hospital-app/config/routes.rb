Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'patients', to: 'patients#index'
  # get 'patients/:id', to: 'patients#show', as: 'patient'

  root 'patients#index'
  resources :patients
end
