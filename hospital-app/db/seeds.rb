# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(first_name: 'John', last_name: 'Doe', diagnosis: 'Dead', born_on: '1986-12-1')
Patient.create(first_name: 'Jane', last_name: 'Doe', diagnosis: 'Dead', born_on: '1996-12-1')
Patient.create(first_name: 'Ranodm', last_name: 'Guy', diagnosis: 'Dead', born_on: '2001-12-1')
Patient.create(first_name: 'Who', last_name: 'Cares', diagnosis: 'Dead', born_on: '1970-12-1')
Patient.create(first_name: 'Bruce', last_name: 'Wayne', diagnosis: 'Dead', born_on: '1980-12-1')