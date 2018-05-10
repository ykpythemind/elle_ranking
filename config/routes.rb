Rails.application.routes.draw do
  get 'votes/index'
  get 'votes/create'
  root to: 'home#index'
  resources :songs
  resources :votes, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
