Rails.application.routes.draw do
  root to: "pages#home"

  resources :reports, path: "content-reports", only: [
    :index, :show, :new, :create, :edit, :update
  ]

  get "up" => "rails/health#show", as: :rails_health_check
end
