# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ana_performace = Performace.create(
  nivel: 8,
  total_experience: 6060,
  amount_courses: 2,
  amount_exercises: 96
)

paulo_performace = Performace.create(
  nivel: 10,
  total_experience: 8060,
  amount_courses: 3,
  amount_exercises: 126
)

amanda_performace = Performace.create(
  nivel: 2,
  total_experience: 2022,
  amount_courses: 1,
  amount_exercises: 48
)

User.create(
  name: "Ana",
  email: "ana@gmail.com",
  password: "123123",

  performace: ana_performace
)

User.create(
  name: "Paulo",
  email: "paulo@gmail.com",
  password: "123123",

  performace: paulo_performace
)

User.create(
  name: "Amanda",
  email: "amanda@gmail.com",
  password: "123123",

  performace: amanda_performace
)
