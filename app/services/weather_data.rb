require "net/http"
require "json"

class WeatherData
  def self.pull_weather_data(id)
    source = "http://api.openweathermap.org/data/2.5/weather?id=#{id}&units=imperial"
    resp = Net::HTTP.get_response(URI.parse(source))
    data = resp.body
    result = JSON.parse(data)
    store_data(result)
  end

  private

    def self.store_data(result)
      city = City.find_or_create_by(name: result["name"], country: result["sys"]["country"], city_id: result["id"] )
      temps = result["main"]
      weather_data = temps.merge({ city_id: city.id })
      Weather.create(weather_data)
    end
end
