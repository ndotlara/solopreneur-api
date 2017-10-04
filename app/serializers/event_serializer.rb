class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_name, :date, :time, :street_address,
             :city, :state, :zip_code, :description, :user_id
end
