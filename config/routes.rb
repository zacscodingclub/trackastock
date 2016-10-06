Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  get 'my-portfolio', to: 'users#my_portfolio'
  get 'stock-search', to: 'stocks#search'
end
