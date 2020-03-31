Rails.application.routes.draw do
 
  get 'patients/update'
  get 'patients/edit/:id', to: 'patients#edit', as: 'edit'
  patch 'patients/:id', to: 'patients#update'
  get 'patients/new', to: 'patients#new'
  get 'patients/:id', to: 'patients#show', as: 'patient'
  get 'patients', to: 'patients#index'
  get 'contact', to: 'pages#contact'
  get 'patients', to: 'pages#patients'
  delete 'patients/:id', to: 'patients#destroy'
  post 'patients', to: 'patients#create'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
