class Event < ApplicationRecord
  belongs_to :user
  has_many :comments

  # validates_presence_of :event_name, :date, :time, :street_address, :city, :state, :zip_code, :description
  validates_length_of :state, is: 2, allow_blank: false
  validates_length_of :description, maximum: 420, too_long: 'description must be less than 420 characters', allow_blank: false
end
