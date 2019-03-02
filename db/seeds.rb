# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
contact1 = Contact.new(first_name: 'Bob', last_name: 'Newhart', address: '17 Corona Dr. New Haven, CT 06501', phone: '(203) 443-8717', email: 'bobnewhart@gmail.com')
contact1.save
contact1 = Contact.new(first_name: 'Mary', last_name: 'Tyler-Moore', address: '323 Pine Cone Dr. New Haven, CT 06501', phone: '(203) 443-1332', email: 'marytylermoore@gmail.com')
contact1.save
