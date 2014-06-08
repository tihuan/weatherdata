# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   Mayor.create(name: 'Emanuel', city: cities.first)

city = City.create({ city_id: 2988507 , name: 'Paris', country: "FR" })
24.times { Weather.create(temp: (40..90).to_a.sample, humidity: (40..90).to_a.sample, pressure: 1011, temp_min: (40..90).to_a.sample, temp_max: (40..90).to_a.sample, city_id: city.id, localtime: (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime ) }
