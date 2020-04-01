Rails.application.routes.draw do
  get 'doctor/index'
  get 'doctor/new'
  # get 'doctor/edit'
  delete 'doctors/delete/:id', to: 'doctor#destroy'
  get "doctor/:id/edit", to: "doctor#edit", as: :doctor_edit
  patch 'doctor/:id', to: 'doctor#update'
  post '/doctors', to: 'doctor#create'
  get 'doctor/:id', to: 'doctor#show', as: 'doctor'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  #get 'patients/edit/:id', to: 'patients#edit'
  get "artists/:id/edit", to: "patients#edit", as: :patients_edit
  patch 'patients/:id', to: 'patients#update'


  delete 'patients/delete/:id', to: 'patients#destroy'
  get 'patients/new', to: 'patients#new'
  post 'patients', to: 'patients#create'

 

  get 'patients/:id', to: 'patients#show', as: 'patient'
  post 'patients', to: 'patients#create'
  get 'patients', to: 'patients#index'

  # delete "artists/:id", to: "artists#destroy"
   root 'patients#index'



end