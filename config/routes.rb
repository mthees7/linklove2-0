LinkloveApp::Application.routes.draw do
  devise_for :users
  resources :streams
  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
  get '/public-stream' => 'pages#public_stream'

  match '/scrape_url' => "UrlScraper#scrape", :via => :post
end
