# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(first_name:'Rana' ,last_name:'Almalki', diagnosis:"Common cold", born_on:"1996-11-18")
Patient.create(first_name:'Hisham', last_name:'Aljahbli' ,diagnosis:"the bash", born_on:"1990-05-21")
Patient.create(first_name:'Saqar', last_name:'Alarifi', diagnosis:"warning rails", born_on:"1993-01-01")
Patient.create(first_name:'Rawan', last_name:'Alrajeh', diagnosis:"Common cold", born_on:"1996-02-02")
Patient.create(first_name:'Haya', last_name:' abdulaziz', diagnosis:"Common cold", born_on:"1996-03-03")


Doctor.create(name:'Rana' ,family_name:'Almalki', zip_code:"12345", specialty:"Gastroenterologist")
Doctor.create(name:'Hisham', family_name:'Aljahbli' ,zip_code:"12345", specialty:"Cardiologist")
Doctor.create(name:'Saqar', family_name:'Alarifi', zip_code:"12345", specialty:"Ophthalmologis")
Doctor.create(name:'Rawan', family_name:'Alrajeh', zip_code:"12345", specialty:"Endocrinologist")
Doctor.create(name:'Haya', family_name:' abdulaziz', zip_code:"12345", specialty:"Dermatologists")