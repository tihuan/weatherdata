class CitiesController < ApplicationController
  before_filter :load_cities

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @weathers = @city.weathers.last(24)
    @city_temps = city_temps
  end

private
  def load_cities
    @cities = City.all
  end

  def city_temps
    weathers = City.find(params[:id]).weathers.last(24)
    weather_temp_pairs = weathers.map { |weather| [weather.localtime.to_s, weather.temp] }
    hourly_temps = Hash[weather_temp_pairs]
  end
end


