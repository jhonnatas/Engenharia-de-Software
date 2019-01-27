# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "================================"
puts "Criando Admin"
puts "================================"
Admin.create(email: "admin@mail.com", password: "123456", password_confirmation: "123456")

puts "================================"
puts "Criado com Sucesso "
puts "================================"