Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  # devise
  devise_for :users

  # root page (it's also where you land after sign_out)
  root to: "pages#home"

  # redirection after login
  get '/user', to: "pages#dashboard", :as => :user_root

  # dashboard
  resources :patients, only: [ :index, :show ] do
    resources :consultations, only: [ :create, :update ] do
      resources :consultation_medications, only: [ :new, :create, :update, :destroy] do
        resources :medications, only: [ :create ]
      end
    end
  end
  get "/my_profile", to: "patients#my_profile", :as => :my_profile

  # chatroom
  resources :chatrooms, only: [] do
    resources :messages, only: [:create]
  end

  # video call route
  get '/calls', to: 'calls#show'

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
