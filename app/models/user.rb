class User < ApplicationRecord
  has_secure_password
  has_many :curriculums

  validates :first_name, presence: true

  def name
    "#{self.first_name}" + "#{self.last_name}"
  end
end
