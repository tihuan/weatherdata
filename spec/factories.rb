require 'faker'

FactoryGirl.define do
  factory :weather do
    temp (40..90).to_a.sample
    humidity (40..90).to_a.sample
    pressure 1011
    temp_min (40..90).to_a.sample
    temp_max (40..90).to_a.sample
    city_id 1
    localtime (Date.today + (0..23).to_a.sample.hour + (0..60).to_a.sample.minutes).to_datetime
  end

  factory :city do
    city_id 2988507
    name "Paris"
    country "FR"
  end
end
