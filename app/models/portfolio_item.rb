class PortfolioItem < ApplicationRecord
  belongs_to :user

  before_validation :strip_id
  
  has_one_attached :preview_image

  validates :title, presence: true, length: { maximum: 120 }
  validates :description, presence: true, length: { maximum: 450 }
  validates :youtube_url, presence: true, format: { with: /\A(https?\:\/\/)?(www\.)?(youtube\.com|youtu\.?be)\/.+\z/,
  	message: "requires a complete YouTube URL"
	}

	private

		def strip_id
      begin
  			self.youtube_id = YoutubeID.from(self.youtube_url)
      rescue
      end
		end
end
