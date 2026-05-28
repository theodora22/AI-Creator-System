Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

<<<<<<< HEAD
  resources :content_reports, path: "content-reports", only: [
    :index, :show, :new, :create, :edit, :update
  ] do
    resources :chats, only: [ :create ]
  end

<<<<<<< HEAD
  resources :chats, only: [ :show ]
=======
  resources :chats, only: [:show] do
    resources :messages, only: [:create]
=======
  resources :content_reports, only: [ :index, :show, :new, :create, :edit, :update ] do
    resources :chats, only: [ :create ]
  end

  resources :chats, only: [ :show ] do
    resources :messages, only: [ :create ]
>>>>>>> a2a648377165d10d07bf91385968459b35180f0e
  end
>>>>>>> 4da0e15591f69fd01bfcdfdd663f472a36e1c75a

  get "up" => "rails/health#show", as: :rails_health_check
end
