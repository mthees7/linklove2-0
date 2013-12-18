LinkloveApp::Application.routes.draw do
  devise_for :users, :controllers => {:confirmations => 'confirmations'}

  devise_scope :user do
    put "/confirm" => "confirmations#confirm"
  end

  resources :streams do
    resources :posts
  end
  resources :posts # un-nested version

  root :to => 'pages#home'

  get '/streamify' => 'pages#streamify'
  get '/public-stream' => 'pages#public_stream'
  get '/streams/:id/:tag', to: 'streams#index_by_tag', as: :tag

  match '/scrape_url' => "UrlScraper#scrape", :via => :post
end