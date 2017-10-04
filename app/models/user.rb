# frozen_string_literal: true
class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :events
  has_many :comments, through: :events

  # validates_presence_of :first_name, :last_name, :company, :title, :city, :state, :bio, :interests
end
