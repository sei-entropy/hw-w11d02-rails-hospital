Rails.application.routes.draw do
 

  get 'patients', to: 'patients#index'
  

  # get 'patients', to: 'patients#home'
  get 'patient/home'

  # get 'patient/index'

  # get 'patient', to: 'patient#home'

  # root 'pages#home'
  # post 'patient', to: 'patient#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
