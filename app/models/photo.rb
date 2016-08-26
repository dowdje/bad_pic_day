class Photo < ApplicationRecord
  belongs_to :celebrity
  has_many :comments
end
