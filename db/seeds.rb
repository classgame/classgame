# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
    User.create(name: "Jones", email: "jones@gmail.com", password: "123123123", cpf: "08880420332")
    Chapter.create(title: "Best Practices with ruby on rails", description: "what do you know about routes?", experience: "40")
    Content.create(chapter_id: 1)
    Content.create(chapter_id: 1)
    Content.create(chapter_id: 1)
    Video.create(link: "link de um video", title: "First steps with ruby", description: "Do you know about the facilities when you program with ruby?", content_id: 2)
    Text.create(title: "Introduction in Ruby on Rails", text: "Learning to build a modern web application is daunting. Ruby on Rails makes it much easier and more fun. It includes everything you need to build fantastic applications, and you can learn it with the support of our large, friendly community.", experience: "30", content_id: 2)
    Exercise.create(title: "Resolva a questao a seguir", nivel: "hard", experience: "50", content_id: 3)
    Question.create(description: "What is your course? ADS?", experience: "50", exercise_id: 1)
    Alternative.create(description: "Yes, i'm the best", correct: true, question_id: 1)
    Alternative.create(description: "No, i'm a shit", correct: false, question_id: 1)
