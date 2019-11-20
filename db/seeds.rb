# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tool.destroy_all
User.destroy_all

puts "Create User and Tool"
user1=User.new(name:'Hans Mustermann', address:'Berlin',email:'mustermann@gmail.com', password: "1231232")
user1.save!

user2=User.new(name:'Hans Meier', address:'Hamburg',email:'Meier@gmail.com', password: "1231231")
user2.save!

user3=User.new(name:'Claudia Bach', address:'Munic',email:'Bach@gmail.com', password: "1231233")
user3.save!

tool1=Tool.new(name:'hammer', description:'big hammer easy use', address:'Berlin',user:user1)
tool1.save!

tool2=Tool.new(name:'ladder', description:'3 meter long', address:'Hamburg',user:user2)
tool2.save!

tool3=Tool.new(name:'drilling machine', description:'works well', address:'Munic',user:user3)
tool3.save!

#boooking1=Booking.create(user:rental_start: '01122019',rental_end:'0512.2019')
puts "Created #{User.count} and #{Tool.count}"

