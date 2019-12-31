# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
	email: 'test@example.com',
	password: 'password',
	password_confirmation: 'password'
)

5.times do
	user.portfolio_items.create(
		title: 'Test',
		description: 'This is a test portfolio item.',
		youtube_id: 'dQw4w9WgXcQ',
		youtube_url: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
	)
end