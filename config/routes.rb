Rails.application.routes.draw do
  get 'ranks/index'
  get 'votes/index'
  get 'votes/create'
  root to: 'home#index'
  resources :songs, only: [:show]
  resources :votes, only: [:index, :create, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
