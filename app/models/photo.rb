class Photo < ApplicationRecord
  belongs_to :celebrity
  has_many :comments
  accepts_nested_attributes_for :comments, reject_if: proc {|attributes| attributes['content'].blank?}
  accepts_nested_attributes_for :celebrity, reject_if: proc {|attributes| attributes['name'].blank?}
  validates :image, presence: true
  	has_attached_file :image, styles: { medium: "640x", thumb: "100x" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
