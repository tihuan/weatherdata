class Cities::ShowPresenter
  def initialize(city)
    @city = city
  end

  def weathers
    @city.weathers.recent(24)
  end

  def city_hourly_temps
    @city.hourly_temps(weathers)
  end
end
