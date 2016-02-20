Rails.application.routes.draw do
  resources :bookmarks
  devise_for :users

  root to: 'home#index'
  get 'tags/:tag', to: 'bookmarks#tags', as: :tags
end
