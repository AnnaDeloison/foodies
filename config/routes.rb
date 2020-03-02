Rails.application.routes.draw do
  get 'troubles/show'
  root to: 'pages#home'
  resources :troubles, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

