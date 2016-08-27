class Celebrity < ApplicationRecord
	has_many :photos
	has_many :comments, through: :photos
	has_attached_file :image, styles: { :medium => "640x" }
  validates_uniqueness_of :name
	# Validate the file
end
