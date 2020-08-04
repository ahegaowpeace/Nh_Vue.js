Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'books#index'

	get '/api/v1/books', to: 'api/v1/books#index'
	get '/books', to: 'books#index'
end
