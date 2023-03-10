Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations"}
  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :friendships
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "welcome#index"
  get "my_portfolio", to: "users#my_portfolio"
  get "search_stocks", to: "stocks#search"
  get "my_friends", to: "users#my_friends"
  get "search_friends", to: "users#search"
  post "add_friend", to: "users#add_friend"
end
