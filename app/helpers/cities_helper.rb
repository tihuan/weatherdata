module CitiesHelper
  def arrow(city_id, direction)
    if City.exists?(@city.id - 1)
      link_to('', city_path(id: @city.id - 1), class: "fa fa-chevron-#{direction} fa-4x arrow-#{direction}", remote: true)
    end
  end
end
