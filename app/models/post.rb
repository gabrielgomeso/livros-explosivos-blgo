class Post < ApplicationRecord
  has_one_attached :featured_image
  has_rich_text :content

  has_many :tags
  belongs_to :user

  validates :title, presence: true, length: { minimum: 6, maximum: 100 }
  validates :author, presence: true, uniqueness: true, length: { minimum: 6, maximum: 25 }

  acts_as_punchable
end
