Rails.application.routes.draw do
  get '/inicio', to: 'posts#index'
  get '/nueva_publicacion', to: 'posts#form'
  get '/exito', to: 'posts#success'

  post 'posts/create', to: "posts#create"

  root 'posts#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
