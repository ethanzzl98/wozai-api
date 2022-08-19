json.recents do
  json.array! @checkins do |recent_checkin|
    json.partial! partial: 'api/v1/venues/venue', venue: recent_checkin.venue
    json.extract! recent_checkin, :number_of_visits
  end
end
