Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'posts#index'
  get '/posts/searchpost',  to: 'posts#search_post'
  resources :posts, only: [:index,:new, :edit, :update, :show,:create,:destroy] do
    collection do
      get 'search'
    end
  end
end
