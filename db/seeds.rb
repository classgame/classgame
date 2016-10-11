# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_address = Address.create(
  address: "Rua A",
  number: 12,
  complement: "Em Frente ao Supermercado X",
  neighborhood: "Bairro Z",
  zip_code: "57001001"
)

User.create(
  name: "Administrador",
  email: "admin@gmail.com",
  password: "123123",

  address: admin_address
)
