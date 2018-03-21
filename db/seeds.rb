# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Users"
User.create!(name: "Mike Garlick",
             email: "mike@earthlingsnw.com",
             password:"stheel",
             password_confirmation:"stheel",
             admin: true,
             activated: true,
             activated_at: Time.zone.now)
#
#99.times do |n|
#  name  = Faker::Name.name
#  email = "example-#{n+1}@railstutorial.org"
#  password = "password"
#  User.create!(name:  name,
#               email: email,
#               password:              password,
#               password_confirmation: password,
#               activated: true,
#               activated_at: Time.zone.now)
#end

puts "Creating Units\n"
Unit.create([{name:"mm"}, {name:"in"}])

puts "Creating Mints\n"
Mint.create([
                {name: "DirectMint"},
                {name: "Random Lunacy"},
                {name: "Oak Coins"},
                {name: "Cache Advance (Cache Addict)"},
                {name: "MyGeocoin"},
                {name: "GeoCoinShop"},
                {name: "Ernie's Geocoins"},
                {name: "Coins and Pins"},
                {name: "Groundspeak"},
                {name: "Hogwild Stuff"},
                {name: "Palehorse Designs"},
                {name: "Gregson Vaux"},
                {name: "T*Sunrise*Bey"},
                {name: "The Caching Place"},
                {name: "GxProxy"}
])

puts "Creating Materials\n"
Material.create([
    {name: "Copper"},
    {name: "Silver"},
    {name: "Gold"},
    {name: "Nickel"}
])

puts "Creating Finishes\n"
Finish.create( [
    {name: "Shiny"},
    {name: "Antique"},
    {name: "Black"},
    {name: "Satin"}
])

puts "Creating Artists\n"
Artist.create([
    {name: "Avroair"},
    {name: "Random Lunacy Productions"},
    {name: "As designed"}
])


puts "Seeding complete. Enjoy your testing!\n"