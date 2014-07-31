class Weather < ActiveRecord::Base
  validates :temp, presence: true
  validates :humidity, presence: true
  validates :pressure, presence: true
  validates :temp_min, presence: true
  validates :temp_max, presence: true
  validates :localtime, presence: true

  belongs_to :city

  scope :recent, lambda { |num = nil| order('created_at desc').limit(num) }
end
