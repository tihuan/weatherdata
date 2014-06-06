desc "This task is called by the Heroku scheduler add-on"
task :update_weather_data => :environment do
  puts "Pulling weather data..."
  cities = City.all
  cities.each do |city|
    WeatherData.pull_weather_data(city.city_id)
  end
  puts "done."
end
