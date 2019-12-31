class PortfolioItem < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :desc) }

  validates :title, presence: true, length: { maximum: 120 }
  validates :description, presence: true, length: { maximum: 450 }
  validates :youtube_id, presence: true
end
