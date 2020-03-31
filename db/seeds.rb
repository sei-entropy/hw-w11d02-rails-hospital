# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(first_name: "lona", last_name: "AL OOO", diagnosis: "fever", born_on: '2016-03-02 12:05:00' )
Patient.create(first_name: "sara", last_name: "AL OOO", diagnosis: "cold", born_on: '2016-03-02 12:05:00' )
Patient.create(first_name: "Joel", last_name: "AL OOO", diagnosis: "headache", born_on: '2016-03-02 12:05:00' )
Patient.create(first_name: "Aziz", last_name: "AL OOO", diagnosis: "headache", born_on: '2016-03-02 12:05:00' )
Patient.create(first_name: "noura",last_name: "AL OOO", diagnosis: "fever", born_on: '2016-03-02 12:05:00' )

Doctor.create(name: "Ahmed", family_name: "ALMutairi", specialty: "Internal", zip_code: 14 )
Doctor.create(name: "Zaki", family_name: "ALBuayjan", specialty: "Pediatrics", zip_code: 15 )
Doctor.create(name: "Khalid", family_name: "ALBuayjan", specialty: "dentistry", zip_code: 16 )
