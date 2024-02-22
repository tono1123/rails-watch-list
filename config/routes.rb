Rails.application.routes.draw do
  # get '/lists', to: 'lists#index'
  # get '/lists/new', to: 'lists#new'
  # post '/lists', to: 'lists#create'
  # get '/lists/:id', to: 'lists#show', as: 'list'

  # get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'bookmark'
  # post 'lists/:list_id/bookmarks', to: 'bookmarks#create'
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'

  resources :lists do
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
