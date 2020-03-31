Rails.application.routes.draw do

  get 'patients/new' , to:'patients#new'
  get 'patients/:id' ,to:'patients#show' , as: 'patients'
  get 'patients' , to: 'patients#index'
  get 'pages/home'
  root 'pages#home'
end 
