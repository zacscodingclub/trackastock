Rails.application.routes.draw do
  root 'pages#index'
  resources :user_stocks, except: [:show, :edit, :update]
  devise_for :users, :controllers => { :registrations => 'user/registrations' }

  get 'my-portfolio', to: 'users#my_portfolio'
  get 'stock-search', to: 'stocks#search'
end
