json.recents do
  json.array! @checkins do |recent_checkin|
    json.partial! partial: 'api/v1/venues/venue', venue: recent_checkin.venue
  end
end
