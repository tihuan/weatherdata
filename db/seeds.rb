ActiveRecord::Base.transaction do
  city1 = City.create({ city_id: 2988507 , name: 'Paris', country: "FR" })
  city2 = City.create({ city_id: 5368361 , name: 'Los Angeles', country: "US" })
  city3 = City.create({ city_id: 5391959 , name: 'San Francisco', country: "US" })
  city4 = City.create({ city_id: 5128581 , name: 'New York', country: "US" })
  city5 = City.create({ city_id: 3173435 , name: 'Milano', country: "IT" })
  city6 = City.create({ city_id: 2996944 , name: 'Lyon', country: "FR" })
  city7 = City.create({ city_id: 5359777 , name: 'Irvine', country: "US" })

  (1..7).each do |n|
    24.times do
      Weather.create(
      temp: (40..90).to_a.sample,
      humidity: (40..90).to_a.sample,
      pressure: 1011,
      temp_min: (40..90).to_a.sample,
      temp_max: (40..90).to_a.sample,
      city_id: eval("city#{n}").id,
      localtime: (Date.today + rand(0..23).hour + rand(0..60).minutes).to_datetime )
    end
  end
end
