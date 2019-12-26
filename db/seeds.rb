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

headline.user_id = user1.id

headline.save!

puts 'finished creating headline'

puts 'Creating about...'

about = Content.new({
  title: "About",
  description: "Passionate about helping others achieve their fitness and weight-loss goals, I provide high-energy programs combining the latest techniques in nutrition and exercise science."
})

about.user_id = user1.id

about.save!

puts 'Finished!'
