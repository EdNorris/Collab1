Collab::Application.routes.draw do
  resources :words

  resources :book_words

  resources :books

  get 'sentence', to: 'sentence#random'
  root :to => 'visitors#new'
end
