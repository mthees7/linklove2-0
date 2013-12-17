LinkloveApp::Application.routes.draw do
  devise_for :users, :controllers => {:confirmations => 'confirmations'}

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
  end

  resources :streams
  resources :posts


  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
  get '/public-stream' => 'pages#public_stream'

  match '/scrape_url' => "UrlScraper#scrape", :via => :post
end




