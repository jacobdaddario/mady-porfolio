class AddYoutubeUrltoPortfolioItems < ActiveRecord::Migration[6.0]
  def change
  	add_column :portfolio_items, :youtube_url, :string
  end
end
