# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Dog(id: integer, name: string, age: integer, breed: string, texture: string, gender: string, created_at: datetime, updated_at: datetime) 

Dog.create!({name:'Rover', age:3, breed:'Collie', gender:'M', texture:'smooth' })
Dog.create!({name:'Bella', age:3, breed:'Lab', gender:'F', texture:'smooth' })

