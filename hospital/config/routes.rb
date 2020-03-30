Rails.application.routes.draw do
 
  #get 'patients/new' , to:'patients#new'

  #get 'todos/:id' , to: 'todos#show'  
  
  get 'patients/:id', to: 'patients#show', as: 'patient'
  #get 'patients', to: 'patients#index'
  
  #post 'patients', to: 'patients#create'
  
  #get 'pages/home'
  #get 'pages/about'
  #get 'pages/contact'
  #get 'about', to: 'pages#about'
  #get 'contact', to: 'pages#contact'

  #root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
