Rails.application.routes.draw do
  get 'homes/show'

  devise_for :users
  resources :posts


  resources :homes, only: [:show]

  get "posts/local" => "posts#local"
  get "pages/contact" => "pages#contact"
  get "pages/about" => "pages#about"
  get "pages/election2016" => "pages#election2016"

  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
