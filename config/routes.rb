Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'patients/delete/:id', to: 'patients#destroy'
  get 'patients/new', to: 'patients#new'
  post 'patients', to: 'patients#create'

  get 'patients/edit/:id', to: 'patients#edit'
  post 'patients', to: 'patients#update'

  get 'patients/:id', to: 'patients#show', as: 'patient'
  post 'patients', to: 'patients#create'
  get 'patients', to: 'patients#index'

  # root 'patients'

end