json.leaders do
  json.array! @checkins do |checkin|
    json.extract! checkin.user, :nickname, :id, :avatar_url
    json.extract! checkin, :number_of_visits
  end
end
