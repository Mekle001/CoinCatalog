class Initial < ActiveRecord::SeedMigration
  
  def self.up
    puts "Creating Users"
    User.create!(name: "Mike Garlick",
                 email: "mike@earthlingsnw.com",
                 password:"password",
                 password_confirmation:"password",
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
  end
  
end