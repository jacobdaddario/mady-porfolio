class AddYoutubeIdToPortfolioItem < ActiveRecord::Migration[6.0]
  def change
  	add_column :portfolio_items, :youtube_id, :string
  end
end
