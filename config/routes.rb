LinkloveApp::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
end
