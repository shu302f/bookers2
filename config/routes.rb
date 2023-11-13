Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users
  resources :users, only: [:index, :show, :edit]
  resources :books, only: [:create, :index, :show, :edit]
  get "/home/about" => "homes#about", as: "about"
end
