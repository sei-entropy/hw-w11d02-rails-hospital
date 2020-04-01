Rails.application.routes.draw do

  get "patients/new", to: "patients#new" ,as: 'add_patient'
  get 'patients/:id/edit', to:'patients#edit' ,as: 'edit_patient'
  delete 'patients/:id', to: 'patients#destroy'

  get "patients", to: "patients#index"
  get "patients/:id", to: "patients#show", as: :patient
  post 'patients', to: 'patients#create'
  patch 'patients/:id', to: 'patients#update'



  get "doctors/new", to: "doctors#new" ,as: 'add_doctor'
  get 'doctors/:id/edit', to:'doctors#edit' ,as: 'edit_doctor'
  delete 'doctors/:id', to: 'doctors#destroy'

  get "doctors", to: "doctors#index"
  get "doctors/:id", to: "doctors#show", as: :doctor
  post 'doctors', to: 'doctors#create'
  patch 'doctors/:id', to: 'doctors#update'

end


