json.extract! portfolio_item, :id, :title, :description, :user_id, :created_at, :updated_at
json.url portfolio_item_url(portfolio_item, format: :json)
