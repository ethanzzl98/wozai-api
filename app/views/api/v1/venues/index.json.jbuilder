json.lessons do
  json.array! @venues do |venue|
    # json.extract! lesson, :id, :subject, :title, :start_time, :end_time, :icon_url
    json.partial! partial: 'api/v1/venues/venue', venue: venue
  end
end
