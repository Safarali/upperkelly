Rails.application.routes.draw do
  root 'pages#home'
  devise_for :admins, controllers: { registrations: "registrations"}
end
