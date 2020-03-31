Rails.application.routes.draw do

  get 'patients/new', to: 'patients#new'
  get 'patients/index', to: 'patients#index'
  get 'patients/:id', to: 'patients#show', as: 'patient'
  post 'patients', to: 'patients#create'

  patch 'patients/update/:id', to: 'patients#update', as: 'edit_patient'
  delete 'patients/:id', to: 'patients#destroy', as: 'patient_destroy'

 
  root 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
