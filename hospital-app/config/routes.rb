Rails.application.routes.draw do
  get 'patients', to: 'patients#index'
  get 'patients/edit/:id', to: 'patients#edit', as: 'edit'
  patch 'patients/:id', to: 'patients#update'
  get 'patients/new'
  post 'patients', to: 'patients#create'
  delete 'patients/:id', to: 'patients#destroy'
  get 'patients/:id', to: "patients#show", as: 'patient'

  root 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
