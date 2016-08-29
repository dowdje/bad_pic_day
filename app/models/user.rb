class User < ActiveRecord::Base
  has_many :photos
  has_many :celebrities, through: :photos
  has_many :comments
	validates :name, presence: true, uniqueness: true
	has_secure_password

end
