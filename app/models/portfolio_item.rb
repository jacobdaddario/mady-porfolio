class PortfolioItem < ApplicationRecord
  belongs_to :user

  default_scope { order(created_at: :desc) }

  before_validation :strip_id

  validates :title, presence: true, length: { maximum: 120 }
  validates :description, presence: true, length: { maximum: 450 }
  validates :youtube_url, presence: true, format: { with: /\A(https?\:\/\/)?(www\.)?(youtube\.com|youtu\.?be)\/.+\z/,
  	message: "requires a valid Youtube url."
	}

	private

		def strip_id
      begin
  			self.youtube_id = YoutubeID.from(self.youtube_url)
      rescue
      end
		end
end
