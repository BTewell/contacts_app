# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# FFaker::Name.first_name
# FFaker::Name.last_name
# FFaker::AddressUS.street_address
# FFaker::AddressUS.city
# FFaker::AddressUS.state_abbr
# FFaker::AddressUS.zip_code
# FFaker::PhoneNumber.short_phone_number
50.times do
  first_name = FFaker::Name.first_name
  last_name = FFaker::Name.last_name
  email = "#{first_name}#{last_name}@gmail.com"
  contact1 = Contact.new(first_name: first_name, last_name: last_name, address: FFaker::AddressAU.full_address, phone: FFaker::PhoneNumber.short_phone_number, email: email)
    contact1.save
end

