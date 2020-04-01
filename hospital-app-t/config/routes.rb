Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :doctors,:patients
  root "doctors#index"


  # resources :patients
  # root "doctors#show"

end
