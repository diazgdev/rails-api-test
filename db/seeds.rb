# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

10.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

Product.create(name: 'Product 1', description: 'This is product 1', price: 10.99)
Product.create(name: 'Product 2', description: 'This is product 2', price: 9.99)
Product.create(name: 'Product 3', description: 'This is product 3', price: 14.99)

10.times do
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraphs(number: 10).join('\n\n')
  )
end
