class CitiesController < ApplicationController
  def index
    @cities = City.all
    @weathers_first12 = City.first.weathers.last(24)[0..10]
    @weathers_last12 = City.first.weathers.last(24)[11..23]
    @city_temps = city_temps
  end

  def city_temps
    weathers = City.first.weathers.last(24)
    weather_temp_pairs = weathers.map { |weather| [weather.created_at.to_s, weather.temp] }
    p hourly_temps = Hash[weather_temp_pairs]
  end
end
