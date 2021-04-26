Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
  # your routes here...
  # devise
  devise_for :doctors, path: "doctors", controllers: { sessions: "doctors/sessions" }
  devise_for :patients, path: "patients", controllers: { sessions: "patients/sessions" }

  # root page (it's also where you land after sign_out)
  root to: "pages#home"

  # redirection after login
  get '/user', to: "pages#dashboard", :as => :user_root

  # dashboard
  resources :patients, only: [ :index, :show ] do
    resources :consultations, only: [ :index, :create ]
  end

  resources :consultations, only: [ :show, :edit, :update ] do
    resources :consultation_medications, only: [ :create, :update ]
  end

  resources :consultation_medications, only: [ :destroy ]

  get "/my_profile", to: "patients#my_profile", :as => :my_profile

  # chatroom
  resources :chatrooms, only: [ :show ] do
    resources :messages, only: [:create]
  end

  resources :videorooms, only: [ :show ]

  # video call route
  # get '/calls', to: 'calls#show'

  # errorpages routes
  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"

  # configure sidekiq
  require "sidekiq/web"
  authenticate :user, ->(user) { user.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end
end
