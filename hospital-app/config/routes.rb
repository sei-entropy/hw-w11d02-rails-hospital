Rails.application.routes.draw do
  root to: "patients#index"

  get "patients", to: "patients#index"
  get "patients/:id", to: "patients#show", as: :patient
  get "patients/new", to: "patients#new"
  post 'patients', to: 'patients#create'
  get 'patients/edit/:id', to: 'patients#edit', as: 'edit'
  patch 'patients/:id', to: 'patients#update'
  delete 'patients/:id', to: 'patients#destroy'
end
