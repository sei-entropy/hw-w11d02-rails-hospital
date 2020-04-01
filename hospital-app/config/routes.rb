Rails.application.routes.draw do

  get "patients/new", to: "patients#new"
  get 'patients/:id/edit', to:'patients#edit' ,as: 'edit_patient'
  delete 'patients/:id', to: 'patients#destroy'

  get "patients", to: "patients#index"
  get "patients/:id", to: "patients#show", as: :patient
  post 'patients', to: 'patients#create'
  patch 'patients/:id', to: 'patients#update'
end


