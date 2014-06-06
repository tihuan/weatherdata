class Weather < ActiveRecord::Base
  validates :temp, presence: true
  validates :humidity, presence: true
  validates :pressure, presence: true
  validates :temp_min, presence: true
  validates :temp_max, presence: true

  belongs_to :city
end
