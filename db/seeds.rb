# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: "Admin", email: "dndkpj@gmail.com", password: "crizza2015", password_confirmation: "crizza2015")

Inquiry.create(first_name: "Kate", last_name: "Wood", email: "wb4charmed@yahoo.com", phone: "571-213-6495", city_of_interest: "Santa Clarita", state: "CA", zip: 91321, reason: "Testing this site and the inquiry input form.", networth: "Less than $30,000", liquidity: "Less than $30,000")
