Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :books
  resources :subjects
  resources :curriculums
  resources :users


  get "signup", to: 'users#new', as: 'signup'
  get '/login', to: 'sessions#new', as: 'login'
  post "/sessions", to: "sessions#create", as: "sessions"
  delete "/sessions", to: "sessions#destroy", as: 'logout'
  get "/sessions", to: "sessions#destroy"

  get "/", to: "home#index"
  get "/profile", to: "home#show", as: "profile"
  get '/add_to_lib', to: "home#add_curriculum_to_lib", as: "add_to_lib"
  get '/library', to: "home#curriculum_library", as: "library"




end
