LinkloveApp::Application.routes.draw do
  devise_for :users
  resources :streams
  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
end
