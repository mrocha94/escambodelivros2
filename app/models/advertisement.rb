class Advertisement < ActiveRecord::Base
  belongs_to :books_group
  has_many :books_group_has_books, through: :books_group
  has_many :books, through: :books_group_has_books
  belongs_to :user

  validate :ativo?

  private

  def ativo?
    errors.add(:ativo, 'needs at least one book') if ativo && books.size.zero?
  end
end
