json.frequents do
  json.array! @checkins do |frequent_checkin|
    json.partial! partial: 'api/v1/venues/venue', venue: frequent_checkin.venue
    json.extract! frequent_checkin, :number_of_visits
  end
end
