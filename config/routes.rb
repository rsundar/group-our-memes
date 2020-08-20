Rails.application.routes.draw do
  resources :transactions
  resources :groups
  get 'home', to: "home#index", as: "index"
  get 'groupless', to: "transactions#groupless", as: "groupless"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  authenticated :user do
    root to: "home#index", as: :authenticated_root
  end

  devise_scope :user do
    root to: "devise/sessions#new"
  end
end
