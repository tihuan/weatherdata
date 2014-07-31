class City < ActiveRecord::Base
  validates :city_id, presence: true
  validates :name, presence: true
  validates :country, presence: true

  has_many :weathers

  def display_name
    "#{name}, #{country}"
  end

  def hourly_temps(weathers)
    weather_temp_pairs = weathers.map { |weather| [weather.localtime.to_s, weather.temp] }
    hourly_temps = Hash[weather_temp_pairs]
  end
end
