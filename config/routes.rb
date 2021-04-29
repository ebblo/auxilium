Rails.application.routes.draw do

  devise_for :doctors, path: "doctor", controllers: { sessions: "doctor/sessions" }
  devise_for :patients, path: "patient", controllers: { sessions: "patient/sessions" }

  root to: "pages#home"

  # get '/user', to: "pages#dashboard", :as => :user_root TODO redefine after login redirections

  namespace :doctor do
    resources :patients, only: [ :index, :show ] do
      resources :consultations, only: [ :index, :create ]
    end
    resources :consultations, only: [ :show, :edit, :update ] do
      resources :consultation_medications, only: [ :create ]
    end
    resources :consultation_medications, only: [ :destroy , :update ]
    resources :chatrooms, only: [ :show ] do
      resources :messages, only: [:create]
    end
    resources :videorooms, only: [ :show, :update ]
  end

  get '/dashboard', to: "patients#dashboard"
  resources :consultations, only: [ :index, :show ]
  resources :chatrooms, only: [ :show ] do
    resources :messages, only: [:create]
  end
  resources :videorooms, only: [ :show ]

  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
