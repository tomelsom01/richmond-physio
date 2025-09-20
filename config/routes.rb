Rails.application.routes.draw do
  get 'contacts/new'
  get 'contacts/create'
  get 'cookies/accept'
  get 'cookies/reject'
  get 'appointments/index'
  root to: "pages#home"
  get '/appointments', to: 'appointments#index'
  post "/cookies/accept", to: "cookies#accept"
  post "/cookies/reject", to: "cookies#reject"
  get '/pessary_fitting', to: 'pages#about'
  get "contact", to: "pages#contact"
  post "send_contact", to: "pages#send_contact"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:new, :create]
end
