class Api::V1::VenuesController < Api::V1::BaseController
  def index
    @venues = Venue.all
  end
end
