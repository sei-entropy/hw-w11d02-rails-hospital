Rails.application.routes.draw do
  get 'patients/new', to:'patients#new'
  get 'patients/:id', to:'patients#show' ,as:'patient'
  post 'patients', to: 'patients#create'
  get 'patients', to: 'patients#index' 
  get "patients/:id/edit", to: "patients#edit", as:"edit_patient"
  patch "patients/:id", to: "patients#update"
  delete 'patients/:id',to:'patients#destroy' ,as:"delete_patient"
  
    # root 'patients#patients'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
