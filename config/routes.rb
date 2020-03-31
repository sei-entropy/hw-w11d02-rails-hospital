Rails.application.routes.draw do
  get 'patients', to: 'patient#index'
  get 'patients/edit/:id', to: 'patient#edit', as: 'edit'
  patch 'patients/:id', to: 'patient#update'
  get 'patients/new'
  post 'patients', to: 'patient#create'
  delete 'patients/:id', to: 'patient#destroy'
  get 'patients/:id', to: "patient#show", as: 'patient'

  root 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end