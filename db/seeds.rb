# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
sc = User.create!(username: 'steven', email:'steven@example.com', password:'123456')
u1 = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password:'123456')
u2 = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password:'123456')
u3 = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password:'123456')
u4 = User.create!(username: Faker::Internet.user_name, email: Faker::Internet.email, password:'123456')
users =  [sc, u1, u2, u3, u4]

20.times do
  BlogPost.create!(user: users.sample, title: Faker::Commerce.product_name, content: Faker::Lorem.paragraph )
end

40.times do
   bp = BlogPost.all.to_a.sample
   bp.comments.create!(user:users.sample, content: Faker::Hacker.say_something_smart)
end