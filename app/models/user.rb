class User < ApplicationRecord
  has_secure_password
  has_many :curriculums
  has_many :followers

  validates :first_name, presence: true
  validates :username, presence:true

  def name
    "#{self.first_name}" + " #{self.last_name}"
  end

  def curriculum_count
    self.curriculums.count
  end
end
