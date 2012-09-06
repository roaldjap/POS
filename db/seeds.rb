# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

customer = Customer.create(name: 'Roald',birthdate: '1991-09-05',gender: 'male')
product = Product.create(name: 'Productone', description: 'This is one', price: '2.00')
Transaction.create(transaction_date: Time.now, customer_id: customer.id, product_id: product.id )