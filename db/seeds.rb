# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


10.times do
  Distributor.create([{ name: Faker::Company.name }])
end


admin = User.create(email: 'admin@teesy.com', password: 'password', password_confirmation: 'password', admin: true)
user = User.create(email: 'user@teesy.com', password: 'password', password_confirmation: 'password')
