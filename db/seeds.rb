# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(first_name: "Adam", last_name: "Smith", diagnosis: "Hyper attention", born_on: "1999/09/9")
Patient.create(first_name: "Ali", last_name: "Khaled", diagnosis: "Heart Failure", born_on: "1989/12/8")
Patient.create(first_name: "Sarah", last_name: "Omar", diagnosis: "Headache", born_on: "1970/5/22")
Patient.create(first_name: "Aisha", last_name: "Nasser", diagnosis: "Stomache pain", born_on: "2000/11/12")
Patient.create(first_name: "Fahad", last_name: "Alahmed", diagnosis: "Fever", born_on: "1988/6/2")