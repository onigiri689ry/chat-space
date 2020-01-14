Rails.application.routes.draw do
  devise_for :users
  root "groups#index"
  root "users#index"
  resources :users, only: [:index, :edit, :update, :edit,]
  resources :groups, only: [:index, :new, :create, :edit, :update, :show] do
    resources :messages, only: [:index, :create, :show]
  end
end