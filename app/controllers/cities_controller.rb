class CitiesController < ApplicationController
  before_filter :load_cities

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @weathers = @city.weathers.recent(24)
    @city_hourly_temps = @city.hourly_temps(@weathers)
  end

private
  def load_cities
    @cities = City.all
  end
end


