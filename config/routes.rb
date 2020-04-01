Rails.application.routes.draw do
  devise_for :patients
 get 'patients/new', to: 'patients#new'
 get 'patients/:id' , to: 'patients#show' , as: 'patient'
 post 'patients', to: 'patients#create'
 get 'patients' , to: 'patients#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "patients#index"
end
