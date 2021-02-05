class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    # some logic
  end
end
