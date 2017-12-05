class Book < ApplicationRecord

  has_many :curriculum_books
  has_many :book_subjects
  has_many :curriculums, through: :curriculum_books
  has_many :subjects, through: :book_subjects
end
