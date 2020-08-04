class Api::V1::BooksController < ApiController
	rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
  end

	def index
		books = Book.all
    render json: books
  end
end
