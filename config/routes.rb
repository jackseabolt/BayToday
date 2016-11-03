Rails.application.routes.draw do
  get 'homes/show'
  get 'posts/local_news', to: "posts#local_news"
  get 'posts/sports', to: "posts#sports"
  get 'posts/database', to: "posts#database"
  devise_for :users
  resources :posts
  resources :homes, only: [:show]

  get "pages/contact" => "pages#contact"
  get "pages/about" => "pages#about"
  get "pages/election2016" => "pages#election2016"

  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
