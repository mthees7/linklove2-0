LinkloveApp::Application.routes.draw do
  devise_for :users

  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
  get '/public-stream' => 'pages#public_stream'
end
