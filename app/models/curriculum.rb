class Curriculum < ApplicationRecord

  belongs_to :user
  has_many :follows
  has_many :curriculum_books
  has_many :books, through: :curriculum_books

  validates :title, presence: true


  def followed?(user_id)

      user = User.find(user_id)
      if Follow.where(user_id: user_id, curriculum_id: self.id).empty?
        false
      else
        true
      end
  end

end
