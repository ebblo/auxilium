Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  # your routes here...
  # devise
  devise_for :doctors, path: "doctor", controllers: { sessions: "doctor/sessions" }
  devise_for :patients, path: "patient", controllers: { sessions: "patient/sessions" }

  root to: "pages#home"

  # get '/user', to: "pages#dashboard", :as => :user_root

  namespace :doctor do
    resources :patients, only: [ :index, :show ] do
      resources :consultations, only: [ :index, :create ]
    end
    resources :consultations, only: [ :show, :edit, :update ] do
      resources :consultation_medications, only: [ :create, :update ]
    end
    resources :consultation_medications, only: [ :destroy ]
    resources :chatrooms, only: [ :show ] do
      resources :messages, only: [:create]
    end
    resources :videorooms, only: [ :show, :update ]
  end

  resources :patients, only: [ :index, :show ] do
    get 'dashboard', on: :collection
  end

  # resources :patients, only: [ :index, :show ] do
  #   resources :consultations, only: [ :index, :create ]
  # end
  # resources :consultations, only: [ :show, :edit, :update ] do
  #   resources :consultation_medications, only: [ :create, :update ]
  # end
  # resources :consultation_medications, only: [ :destroy ]
  # resources :chatrooms, only: [ :show ] do
  #   resources :messages, only: [:create]
  # end
  # resources :videorooms, only: [ :show, :update ]

  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"

  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
