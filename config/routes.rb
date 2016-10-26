Rails.application.routes.draw do
  devise_for :users
  resources :posts

  get "pages/policy" => "pages#policy"
  get "pages/contact" => "pages#contact"
  get "pages/about" => "pages#about"
  get "pages/election2016" => "pages#election2016"

  root "posts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
