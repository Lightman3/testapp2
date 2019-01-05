Rails.application.routes.draw do
  get 'search_stocks', to: 'stocks#search'
  get 'my_portfolio', to: 'users#my_portfolio'
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  # root 'users#my_portfolio'
  root 'welcome#index'
  resources :user_stocks, only: [:create, :destroy]
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
