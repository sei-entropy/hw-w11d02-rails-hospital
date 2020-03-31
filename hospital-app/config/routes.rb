Rails.application.routes.draw do
  get 'patients/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'patients#index'
  resources :patients

end
