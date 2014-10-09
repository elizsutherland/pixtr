class Tag < ActiveRecord::Base
  validates :name, presence: true

  has_many :image_tags
  has_many :images, through: :image_tags
end
