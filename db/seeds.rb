# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating contents...'
Content.create!({
  title: "Headline",
  description: "Tina Damon"
})
Content.create!({
  title: "About",
  address: "<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae dignissimos, omnis esse. Quos porro iure ipsam facere cum at! Qui, sit. Deserunt nihil, animi voluptate accusamus sunt distinctio magni labore.</div><div>Odit voluptatum autem, libero omnis facilis architecto voluptatibus, blanditiis accusantium placeat ad vel rem numquam quae non aspernatur modi illo inventore rerum. Architecto dolore, et nostrum repudiandae quidem corporis soluta.</div>"
})
puts 'Finished!'
