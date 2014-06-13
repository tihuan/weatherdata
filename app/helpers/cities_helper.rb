module CitiesHelper
  def arrow(city_id, direction)
    if City.exists?(city_id)
      link_to('', city_path(id: city_id), class: "fa fa-chevron-#{direction} fa-4x arrow-#{direction}", remote: true)
    end
  end
end
