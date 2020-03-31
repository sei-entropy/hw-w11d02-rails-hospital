Rails.application.routes.draw do
  get "patients", to: "patients#index"
  get "patients/:id", to: "patients#show", as: :patient

    # root 'patients#index'
    # resources :patients
end
