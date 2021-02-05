class BooksController < ApplicationController
  def index
    render json: Book.all
  end

  def create
    # some logic
    book = Book.new(title: 'Harry Potter 1', author: 'JK Rowling')

    if book.save
      render json: book, status: :created
    else
      render json: book.errors, status: :unproccessable_entity
    end
  end
end
