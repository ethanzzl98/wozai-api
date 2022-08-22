class Api::V1::VenuesController < Api::V1::BaseController
  before_action :set_venue, only: [ :show, :update, :destroy ]

  def index
    @venues = Venue.first(20)
  end

  def show
    @checkins = @venue.checkins.order(number_of_visits: :DESC).limit(3)
    @checkin = Checkin.find_by(user_id: @current_user.id, venue_id: @venue.id)
    @my_checkin = @checkin ? @checkin.number_of_visits : 0
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
