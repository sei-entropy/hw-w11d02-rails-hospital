Rails.application.routes.draw do
  # get 'patients/edit/:id', to: 'patients#edit', as: 'patient_edit'
  get 'patients/new', to: 'patients#new'
  get 'patients/:id', to: 'patients#show', as: 'patient'
  post 'patients', to: 'patients#create'
  # get 'patients/index'
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'patients#index'
end
