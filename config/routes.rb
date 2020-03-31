Rails.application.routes.draw do
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 get    'patients/new' , to: 'patients#new'
 get    'patients/:id' , to: 'patients#show' ,as: "patient"
 post   'patients' , to: 'patients#create'
 get    'patients' , to: 'patients#index'
 get    'patients/:id/edit', to: 'patients#edit', as:'patient_edit'
 delete 'patients/:id', to: 'patients#destroy' , as: 'patient_delete'
 patch  'patients/:id', to: 'patients#update'


 root 'patients#patients'

end
