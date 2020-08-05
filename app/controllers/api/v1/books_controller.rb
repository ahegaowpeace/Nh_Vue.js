class Api::V1::BooksController < ApiController
	rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 not found' }, status: 404
  end

	def index
		# 現ページ
		nowpage = params[:page].to_i
		# タイトル数
		booksnum = Book.count
		# 表示数
		viewnum = 10
		# 総ページ
		pagesnum = booksnum / viewnum + 1
		# 表示するid範囲
		startid = booksnum - ((nowpage - 1) * viewnum)
		lastid = startid - viewnum + 1
		lastid = 1 if lastid < 0

		books = Book.all.order(id: :desc).where("(id <= ?) AND (id >= ?)", startid, lastid)
    render json: { books: books, pagesnum: pagesnum }
  end
end
