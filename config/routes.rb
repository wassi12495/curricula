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


end
