# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.destroy_all
Product.destroy_all
ProductCategory.destroy_all

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

ProductStatusCode.create(name: 'Normal', description: 'This marks a normal product.')
ProductStatusCode.create(name: 'New', description: 'This marks a new product.')
ProductStatusCode.create(name: 'Sale', description: 'This marks a product on sale.')

ProductCategory.create(name: "Standard", description: "The standard mealdog category.")
	.products.create(name: "The Standard", description: "The standard mealdog.", price: 9.99)
