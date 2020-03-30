Rails.application.routes.draw do
  get 'patients', to: 'patients#index'
  get 'patients/destroy'
  get 'patients/update'
  get 'patients/new' 
  post 'patients', to: 'patients#create'
  get 'patients/:id', to: "patients#show", as: 'patient'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
