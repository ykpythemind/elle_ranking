Rails.application.routes.draw do
  root to: 'home#index'
  resources :songs, only: [:index, :show] do
    resources :votes, only: [:create, :new]

    put 'quick_votes', as: "quick_votes"
  end
  resources :ranks, only: [:index]

end
