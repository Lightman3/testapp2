Rails.application.routes.draw do
  get 'search_stocks', to: 'stocks#search'
  # get 'users/my_portfolio'
  devise_for :users
  root 'users#my_portfolio'
  # root 'welcome#index'
  # get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
