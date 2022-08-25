json.recents do
  json.array! @checkins do |recent_checkin|
    json.partial! partial: 'api/v1/venues/venue', venue: recent_checkin.venue
    json.extract! recent_checkin, :number_of_visits
    json.last_visit (recent_checkin.updated_at + 8.hours).to_datetime.strftime("%b %d %R")
  end
end
