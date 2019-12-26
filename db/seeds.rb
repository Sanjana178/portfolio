# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Content.destroy_all
User.destroy_all

puts 'Creating user'

user1 = User.new({
  email: "td@abc.com",
  password: "123456"
})

user1.save!

puts 'Finshed creating user'

puts 'Creating headline...'

headline = Content.new({
  title: "Headline",
  description: "Tina Damon"
})
url = "https://images.unsplash.com/photo-1463704131914-97e5aaa0e339?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"
headline.remote_image_url = url
headline.user_id = user1.id

headline.save!

puts 'finished creating headline'

puts 'Creating about...'

about = Content.new({
  title: "About",
  description: "Passionate about helping others achieve their fitness and weight-loss goals, I provide high-energy programs combining the latest techniques in nutrition and exercise science."
})

url = "https://images.unsplash.com/photo-1507048331197-7d4ac70811cf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80"
about.remote_image_url = url
about.user_id = user1.id

about.save!

puts 'Finished!'
