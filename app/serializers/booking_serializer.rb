class BookingSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :pick_up_location, :drop_off_location
end
