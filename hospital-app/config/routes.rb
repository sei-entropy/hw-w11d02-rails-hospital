Rails.application.routes.draw do
  devise_for :users
  get 'patients', to: 'patients#index'
  get 'patients/edit/:id', to: 'patients#edit', as: 'edit'
  patch 'patients/:id', to: 'patients#update'
  get 'patients/new'
  post 'patients', to: 'patients#create'
  delete 'patients/:id', to: 'patients#destroy'
  get 'patients/:id', to: "patients#show", as: 'patient'

  resources :doctors

  get 'doctors/edit/:id', to: 'doctors#edit', as: 'doc_edit'

  root to: 'patients#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
