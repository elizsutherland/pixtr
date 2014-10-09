class Image < ActiveRecord::Base
  belongs_to :gallery
  has_many :comments
  has_many :likes

  has_many :image_tags
  has_many :tags, through: :image_tags

  has_many :groupings
  has_many :groups, through: :groupings

  validates :name, presence: true
  validates :url, presence: true

  def tag_words
    tags.pluck(:name).join(', ')
  end
  def tag_words=(tag_string)
    words = tag_string.split(', ')
    ids = words.map { |word| Tag.find_or_create_by(name: word).id}
    self.tag_ids = ids
  end
end


