Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  # root page (it's also where you land after sign_out)
  root to: "pages#home"

  # redirection after login
  get '/user', to: "pages#dashboard", :as => :user_root

  resources :patients, only: [ :index, :show ] do
    resources :consultations, only: [ :create, :update ]
  end
  get "/my_profile", to: "patients#my_profile", :as => :my_profile
  
end
