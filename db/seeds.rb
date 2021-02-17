# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.delete_all
User.delete_all
bruce = User.create(first_name: 'Bruce', last_name: 'Wayne', email: 'b@t.man', password: '123456', phone_number: '01 23 45 67 89', role: 0)

Appointment.create!(user: User.last, tool: 'Zoom', description: 'Unable to start my meeting', date: Date.today, operating_system: 'Mac', completed: false)
