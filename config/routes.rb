Rails.application.routes.draw do
  devise_for :users, path: 'accounts'
  root 'sessions#index'
  resources :users, only: [:index, :show] do 
    resources :recipes
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
