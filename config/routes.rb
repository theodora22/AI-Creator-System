Rails.application.routes.draw do
<<<<<<< HEAD
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
  root to: "pages#home"
=======
  root to: "pages#home"

  resources :reports, path: "content-reports", only: [
    :index, :show, :new, :create, :edit, :update
  ]

  get "up" => "rails/health#show", as: :rails_health_check
>>>>>>> 411f9374e8f071e0bcf28d8a0f1614d2a2fbccab
end
