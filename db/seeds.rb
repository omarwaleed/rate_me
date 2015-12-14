# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: 'omar', password: '123456', email: 'test@test.com', date_of_birth: Date.today, gender: 'male')
Post.create(name: 'The Big Bang Theory', genre: 'series', approved: true)
Post.create(name: 'Mr Robot', genre: 'series', approved: false)
Post.create(name: 'The Gladiator', genre: 'movie', approved: true)
Post.create(name: 'Sherlock', genre: 'series', approved: true)
