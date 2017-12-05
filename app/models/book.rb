class Book < ApplicationRecord

  has_many :curriculum_books
  has_many :curriculums, through: :curriculum_books
  belongs_to :subject


  validates :title, presence: true

end
