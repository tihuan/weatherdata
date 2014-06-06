class CitiesController < ApplicationController
  def index
    @cities = City.all
    @weathers = City.first.weathers
    @city_temps = city_temps
  end

  def city_temps
    weathers = City.first.weathers
    weather_temp_pairs = weathers.map { |weather| [weather.created_at.to_s, weather.temp] }
    p hourly_temps = Hash[weather_temp_pairs]
  end
end
