categories = venue.categories.map do |category|
  category.name
end
json.extract! venue, :id, :address, :phone, :name, :discount, :longitude, :latitude, :photo
json.open_time venue.open_time&.strftime("%I:%M %P")
json.close_time venue.close_time&.strftime("%I:%M %P")
json.categories do
  json.array! categories
end
