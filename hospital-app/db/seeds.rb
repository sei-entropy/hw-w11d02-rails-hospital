# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(first_name: "Lucy", last_name: "Palmeiro", diagnosis: "Vitamin K deficiency", born_on: "1994-03-29")
Patient.create(first_name: "Joey", last_name: "Arnello", diagnosis: "liver cancer", born_on: "1992-01-26")
Patient.create(first_name: "Matt", last_name: "Davis", diagnosis: "Gold poisoning", born_on: "1982-06-16")
Patient.create(first_name: "John", last_name: "Kelley", diagnosis: "Swallowed a magnet", born_on: "2011-11-09")
Patient.create(first_name: "Nina", last_name: "Brian", diagnosis: "Influenza", born_on: "2007-12-06")

 