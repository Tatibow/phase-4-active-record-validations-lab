# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "seeding data..."

puts "seeding author data..."
# author data
Author.create(name:"Tatiana" , phone_number:"215-960-6468")
Author.create(name:"Peachy" , phone_number:"215-960-6999")
Author.create(name:"Olivia", phone_number:"215-970-6468")

puts "seeding post data..."
#post data
Post.create(title:"Coming to ohio" , content: "travel" , summary: "always wanting to lve in ohio", category:"travel")
Post.create(title:"Staying in ohio" , content:"day in the life" , summary:"moving to ohio", category: "travel")
puts "almost done!"
Post.create(title:"bad time in ohio" , content:"bad day in the life" , summary:"hating the life in ohio", category:"travel")
Post.create(title:"Leaving ohio" , content: "moving", summary:"moving to a new state from ohio", category:"travel")
puts "data seeded!"
