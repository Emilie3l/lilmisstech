Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get  '/myappointments',    to: 'pages#myappointments'
  get '/comingsoon',    to: 'pages#comingsoon'
  get '/solutions',    to: 'pages#solutions'

  resources :appointments, only: %i[new create show destroy edit update]
end
