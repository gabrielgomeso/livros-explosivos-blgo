class Post < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :content

  has_many :tags
  belongs_to :user
end
