require 'factory_girl_rails'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10.times do
  u = User.create(
    username: Faker::Internet.user_name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )

  l = List.create

  u.list = l

  subs = Array.new{Subscriber.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    )}

  u.list.subscribers << subs

  c = Campaign.create(subject: Faker::Company.catch_phrase, body: Faker::Lorem.paragraph )
  u.campaigns << c
  u.save
end

