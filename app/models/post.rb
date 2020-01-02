class Post < ApplicationRecord
  belongs_to :user
  has_rich_text :content
  has_one_attached :header_image

  default_scope { order(created_at: :desc) }

  validates :title, presence: true, length: { maximum: 120 }
  validates :content, presence: true
end
