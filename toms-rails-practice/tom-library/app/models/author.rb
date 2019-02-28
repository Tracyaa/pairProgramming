class Author < ApplicationRecord
  has_many :author_books, dependent: :destroy
  has_many :books, through: :author_books

  validates_presence_of :name
  validates_presence_of :birth_year
  validates :birth_year, numericality: {only_integer: true, less_than: 2020}
end
