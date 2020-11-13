namespace :db do
  desc 'Fill database with trucks'
  task populate_trucks: :environment do
    require 'faker'
    populate_trucks
  end

  def populate_trucks
    100.times do |_n|
      name              = Faker::Restaurant.name
      category          = Faker::Restaurant.type
      city              = "Bordeaux"
      zip_code          = "33000"
      street_address    = Faker::Address.street_address
      country           = "France"
      description       = Faker::Restaurant.description
      saved             = 0

      Truck.create!(name: name,
                    category: category,
                    city: city,
                    zip_code: zip_code,
                    street_address: street_address,
                    country: country,
                    description: description,
                    saved: saved)
    end
  end
end
