class Location < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :infowindow
  validates_presence_of :latitude, :longitude, :infowindow
  geocoded_by :address
  after_validation :geocode, :if => :address_changed?
end
