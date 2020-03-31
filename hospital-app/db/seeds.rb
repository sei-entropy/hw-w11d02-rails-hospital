# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(first_name: "Sara", last_name: "Mohammed", diagnosis: "headache", born_on: "1999-02-2")
Patient.create(first_name: "Nora", last_name: "Ahmed", diagnosis: "headache", born_on: "2000-08-01")
Patient.create(first_name: "Yara", last_name: "khalid", diagnosis: "headache", born_on: "1996-01-10")


Doctor.create(first_name: "layla", last_name: "Mohammed")
Doctor.create(first_name: "huda", last_name: "Ahmed")
Doctor.create(first_name: "nor", last_name: "khalid")