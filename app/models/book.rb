class Book < ApplicationRecord

  has_many :curriculum_books
  has_many :curriculums, through: :curriculum_books
  belongs_to :subject


  validates :title, presence: true
  validates :subject_id, presence: true

  def curricula_count
    self.curriculums.count
  end





end
