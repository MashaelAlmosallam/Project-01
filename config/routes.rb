Rails.application.routes.draw do
  devise_for :users

  resources :users, :arts
  resources :tags, only: [:index, :show]
  root "pages#home"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
