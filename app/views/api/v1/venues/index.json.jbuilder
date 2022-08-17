json.venues do
  json.array! @venues do |venue|
    json.partial! partial: 'api/v1/venues/venue', venue: venue
  end
end
