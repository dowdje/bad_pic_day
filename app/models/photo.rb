class Photo < ApplicationRecord
  belongs_to :celebrity, autosave: true
  belongs_to :user 
  has_many :comments
  accepts_nested_attributes_for :comments, reject_if: proc {|attributes| attributes['content'].blank?}
  accepts_nested_attributes_for :celebrity, reject_if: proc {|attributes| attributes['name'].blank?}
  validates :image, presence: true
  validates :celebrity, presence: true
  	has_attached_file :image, styles: { medium: "640x", thumb: "100x" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

    def autosave_associated_records_for_celebrity
    # Find or create the author by name
      new_celebrity = Celebrity.find_or_create_by(name: celebrity.name.downcase)
      self.celebrity = new_celebrity

  end
end
