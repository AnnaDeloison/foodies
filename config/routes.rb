Rails.application.routes.draw do

  root to: 'pages#home'
  devise_for :users
  resources :troubles, only: [:show]
  resources :recipes, only: [:index, :show] do
    resources :orders, only: [:show, :new, :create] do
      resources :payments, only: :new
    end
  end
  get 'order_confirmation/:order_id', to: 'orders#success', as: :success
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

