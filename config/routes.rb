Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resources :troubles, only: [:show]
  resources :recipes, only: [:index, :show] do
    collection do
      get :cards
    end
  end
  resources :orders, only: [:show, :new, :create] do
      resources :payments, only: :new
  end
  get 'order_confirmation/:order_id', to: 'orders#success', as: :success
  get 'recipes/:id/add_cart', to: 'recipes#add_cart', as: :add_cart
  get 'show_cart', to: 'recipes#show_cart', as: :show_cart
  get 'show_cart/delete_recipe', to: 'recipes#destroy_cart', as: :delete_recipe
  get 'profile', to: 'users#show', as: :profile
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

