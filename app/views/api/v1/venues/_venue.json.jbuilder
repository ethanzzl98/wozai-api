json.extract! venue, :address, :phone, :name, :discount, :longitude, :latitude
json.open_time venue.open_time&.strftime("%I:%M %P")
json.close_time venue.close_time&.strftime("%I:%M %P")
