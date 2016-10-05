# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
    Chapter.create(title: "Best Practices with ruby on rails", description: "what do you know about routes?", experience: "40")
    Content.create(chapter_id: 1)
    Exercise.create(title: "Resolva a questao a seguir", nivel: "hard", experience: "50", content_id: 1)
    Question.create(description: "What is your course?", experience: "50", exercise_id: 1)
    Alternative.create(description: "Yes, i'm the best", correct: true, question_id: 1)
    Alternative.create(description: "No, i'm a shit", correct: false, question_id: 1)


