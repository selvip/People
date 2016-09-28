# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do |i|
  Person.create(name: "Name ##{i}", age: i, money: (1000+i**1))
end

5.times do |e|
	MotorCycle.create(name: "MotorCycle #{e}", 
										velocity: 1+e, 
										current_fuel: 1+e, 
										max_fuel_capacity: e+10,
										distance: 0,
										time: 0)
end