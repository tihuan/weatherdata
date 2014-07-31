class CitiesController < ApplicationController
  before_filter :load_cities

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @presenter = Cities::ShowPresenter.new(@city)
  end

private
  def load_cities
    @cities = City.all
  end
end


