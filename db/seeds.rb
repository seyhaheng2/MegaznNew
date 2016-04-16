# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Category.create(name: "Technology")
Category.create(name: "Entertainment")
Category.create(name: "World")
Category.create(name: "Sport")
Category.create(name: "Travel")
Category.create(name: "Cooking")


100.times do
  Post.create({
    title: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraph
    })
end