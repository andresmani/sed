# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: 'admin', email: 'andres.echeverri8@gmail.com', crypted_password: '$2a$10$2AHL0p5y/DFyYlmfT9QqS.lKg6quZlnBxyhHk9jcOj7gaAwDr4mgS', salt: 'AM9wJsrZS2xETmRV6QPM'  )
