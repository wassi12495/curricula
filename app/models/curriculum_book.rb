class CurriculumBook < ApplicationRecord

  belongs_to :curriculum
  belongs_to :book

  validates :book_id, presence: true
  validates :curriculum_id, presence: true



  def already_contains_book
    book_id = self.book_id
  



  end
end
