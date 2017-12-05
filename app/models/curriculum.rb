class Curriculum < ApplicationRecord

  belongs_to :user
  
  has_many :curriculum_books
  has_many :books, through: :curriculum_books

end
