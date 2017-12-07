class Curriculum < ApplicationRecord

  belongs_to :user
  has_many :followers
  has_many :curriculum_books
  has_many :books, through: :curriculum_books

  validates :title, presence: true


  def followed?(user_id)

      @user_id = user_id
      user = User.find(@user_id)
      byebug
      if user.followers.where(curriculum_id: self.id)
        true
      else
        false

      end
  end

end
