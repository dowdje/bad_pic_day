class Photo < ApplicationRecord
  belongs_to :celebrity
  has_many :comments

  	has_attached_file :image, styles: { :medium => "640x" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
