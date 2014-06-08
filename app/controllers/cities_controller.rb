class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @weathers_first12 = @city.weathers.last(24)[0..11]
    @weathers_last12 = @city.weathers.last(24)[12..23]
    @city_temps = city_temps
  end

  private
    def city_temps
      weathers = City.find(params[:id]).weathers.last(24)
      weather_temp_pairs = weathers.map { |weather| [weather.localtime.to_s, weather.temp] }
      hourly_temps = Hash[weather_temp_pairs]
    end
end
