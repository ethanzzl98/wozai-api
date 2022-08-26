json.partial! partial: 'api/v1/venues/venue', venue: @venue
json.my_checkin @my_checkin
json.ranking @ranking
json.last_visit @checkin ? @checkin.updated_at.localtime.strftime("%F") : '1970-01-01'
json.leaders do
  json.array! @checkins do |checkin|
    json.extract! checkin.user, :nickname, :id, :avatar_url
    json.extract! checkin, :number_of_visits
  end
end
