Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :content_reports, path: "content-reports", only: [
    :index, :show, :new, :create, :edit, :update
  ] do
    resources :chats, only: [ :create ]
  end

  resources :chats, only: [ :show ]

  get "up" => "rails/health#show", as: :rails_health_check
end
