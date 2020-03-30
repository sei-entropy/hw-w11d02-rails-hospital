Rails.application.routes.draw do
  get 'patients', to: 'patients#index'
  get 'patients/:id', to: "patients#show", as: 'patient'
  get 'patients/destroy'
  get 'patients/update'
  get 'patients/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
