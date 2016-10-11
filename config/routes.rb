Rails.application.routes.draw do
  root 'pages#index'
  resources :user_stocks, except: [:show, :edit, :update]

  resources :friendships
  resources :users
  devise_for :users, :controllers => { :registrations => 'user/registrations' }

  get 'search-friends', to:'users#search'
  post 'add-friend', to:'users#add_friend'
  get 'profile/:id', to: 'users#show'
  get 'my-portfolio', to: 'users#my_portfolio'
  get 'stock-search', to: 'stocks#search'
  get 'my-friends', to: 'users#friends'
end
