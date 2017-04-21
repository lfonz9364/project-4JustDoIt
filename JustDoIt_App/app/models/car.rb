class Car < ApplicationRecord
  geocoded_by :ip_address,
    :latitude => :lat, :longitude => :lo
  geocoded_by :destination_address
  reverse_geocoded_by :latitude, :longitude
  after_validation :geocode


  belongs_to :user
  has_many :passenger
end
