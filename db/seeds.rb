# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

properties = [{ address: '123 1st St, Iowa City, IA, 52240', bedrooms: '2', bathrooms: '1', sqft: '1000', price: '600',
                url: 'https://www.washingtonian.com/wp-content/uploads/2019/09/lead.jpg' },
              { address: '789 Main St, Iowa City, IA, 52240', bedrooms: '3', bathrooms: '2', sqft: '1800', price: '1600',
                url: 'https://i.pinimg.com/originals/2a/4e/88/2a4e88838db895eb6de2398bffcd3a09.jpg' },
              { address: '111 2nd St, Iowa City, IA, 52240', bedrooms: '4', bathrooms: '2', sqft: '2000', price: '2500',
                url: 'https://assets.themortgagereports.com/wp-content/uploads/2017/12/How-to-Buy-a-House-with-Low-Income-This-Year.jpg' }]

properties.each do |property|
  Property.create!(property)
end

businesses = [{ logoUrl: 'https://st3.depositphotos.com/2459687/13052/v/950/depositphotos_130525494-stock-illustration-flat-house-icon-isolated-on.jpg',
                name: 'IC Rental Properties', phoneNumber: '(515)-971-7560', address: '321 Iowa Avenue, Iowa City, IA' }]

businesses.each do |business|
  Business.create!(business)
end


users = [{ name: 'Admin Account', email: 'admin@gmail.com', is_admin: 'true', password: 'password', password_confirmation: 'password'}]

users.each do |user|
  User.create_user!(user)
  # User.create!(user)
end
