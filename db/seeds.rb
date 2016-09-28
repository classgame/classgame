# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User.create(name:"Valter", cpf:"352456465", email:"valter@gmail.com", password:"123456")
  category = Category.create(title:"Tecnologia",description:"Tecnologia (do grego é um termo que envolve o conhecimento técnico e científico e a aplicação deste conhecimento através de sua transformação no uso de ferramentas",image:"http://previews.123rf.com/images/butenkow/butenkow1303/butenkow130300310/18648878-Technology-logo-Stock-Photo.jpg")
   
