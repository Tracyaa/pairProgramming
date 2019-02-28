Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :books, only: [:index, :show]
  # get "/books/:id", to: ""
  resources :author_books

end
