# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[
  {handle: "posey"},
  {handle: "pence"},
  {handle: "crawford"},
].each{|attributes| User.where(attributes).first_or_create}

User.first.posts.where(body: "I'm the MVP!").first_or_create
User.second.posts.where(body: "Yes! Yes! Yes!").first_or_create
User.third.posts.where(body: "One word. Hollywood.").first_or_create
