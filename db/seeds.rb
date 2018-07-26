# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
num = 10

num.times do 
	product = Assembly.create(name: Faker::Simpsons.location)
	
	4.times do
		a = Part.create(part_number: "#{Faker::Number.number(10)}")
		product.parts << a
		a.assemblies << product
	end
end