class Event < ApplicationRecord
  validates_presence_of :event_name, :date, :time, :street_address, :city, :state, :zip_code, :description
  validates_length_of :zip_code, is: 5, too_short: 'zip code must be 5 digits'
  validates_length_of :state, is: 2, allow_blank: false
  validates_length_of :description, within: 140...420, too_long: 'description must be between 140-420 characters', too_short: 'description must be between 140-420 characters', allow_blank: false
end
