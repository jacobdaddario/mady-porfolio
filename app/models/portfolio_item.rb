class PortfolioItem < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :desc) }
end
