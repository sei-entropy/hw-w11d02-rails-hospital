# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Patient.create(first_name:"wejdan" ,last_name:"Saud", diagnosis:"Sick", born_on:Date.parse('17/9/2015'))
Patient.create(first_name:"Asule" ,last_name:"Alrasheedi", diagnosis:"sickness", born_on:Date.parse('17/9/2015'))
Patient.create(first_name:"Sara" ,last_name:"Ali" , diagnosis:"Sick" , born_on:Date.parse('17/9/2015'))
Patient.create(first_name:"Ali" ,last_name:"Al-Ali" , diagnosis:"sickness" , born_on:Date.parse('17/9/2015'))
Patient.create(first_name:"Me",last_name:"Me" , diagnosis:"Sick" , born_on:Date.parse('17/9/2015'))