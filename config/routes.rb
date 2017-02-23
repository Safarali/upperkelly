Rails.application.routes.draw do
  root 'pages#home'
  devise_for :admins, controllers: { registrations: "registrations"}
  resources :houses
  resources :photos
  get '/message', to: 'messages#new'
  post '/message', to: 'messages#create'
end
