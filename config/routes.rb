Rails.application.routes.draw do
  # get 'movies/index'
  # get 'movies/show'
  # get 'bookmarks/new'
  # get 'bookmarks/create'
  # get 'bookmarks/destroy'
  # get 'lists/index'
  # get 'lists/create'
  # get 'lists/new'
  # get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "lists#index"
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create destroy]
  end
  resources :bookmarks, only: %i[destroy]
  resources :movies, only: %i[index show]
  # Defines the root path route ("/")
end
