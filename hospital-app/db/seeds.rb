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


Doctor.create(first_name: "Timothy", last_name:"Mcgrath", zip_code: "12221", speciality: "Allergy & Immunology")
Doctor.create(first_name: "Bryan", last_name:"Rowe", zip_code: "33211", speciality: "Neurology")
Doctor.create(first_name: "Caitlin", last_name:"Austin", zip_code: "15542", speciality: "Cardiology")
Doctor.create(first_name: "Madelaine", last_name:"Saunders", zip_code: "66421", speciality: "Pediatrics")
Doctor.create(first_name: "Jaimee", last_name:"Palacios", zip_code: "11783", speciality: "Dentistry")

 