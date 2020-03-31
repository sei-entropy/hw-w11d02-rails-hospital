Rails.application.routes.draw do

  # get 'patients/new' , to:'patients#new'
  # get 'doctors/new' , to:'doctors#new'
  # get 'patients/:id' ,to:'patients#show' , as: 'patients'
  # get 'doctors/:id' ,to:'doctors#show' , as: 'doctors'
  # get 'patients' , to: 'patients#index'
  # get 'doctors' , to: 'doctors#index'
  # get 'pages/home'
  # root 'pages#home'

  root 'pages#home'
  resources :patients, :doctors
end 
