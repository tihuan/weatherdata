class City < ActiveRecord::Base
  validates :city_id, presence: true
  validates :name, presence: true
  validates :country, presence: true

  has_many :weathers

  def display_name
    "#{name}, #{country}"
  end
end
