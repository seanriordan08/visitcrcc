# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  email: "example@example.com",
  first_name: "Bob",
  last_name: "Callahan",
  password: "password",
  gender: "male",
  role: "admin",
  role_description: "Pastor",
  confirmed_at: Time.now)

User.create!(
  email: "example2@example.com",
  first_name: "Amanda",
  last_name: "Simsham",
  password: "password",
  gender: "female",
  confirmed_at: Time.now)
