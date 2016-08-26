class Celebrity < ApplicationRecord
	has_many :photos
	has_many :comments, through: :photos
end
