class Api::V1::VenuesController < Api::V1::BaseController
  before_action :set_venue, only: [ :show, :update, :destroy ]

  def index
    @venues = Venue.first(20)
  end

  def show
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
