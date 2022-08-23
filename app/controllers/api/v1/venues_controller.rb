class Api::V1::VenuesController < Api::V1::BaseController
  before_action :set_venue, only: %i[show update destroy]

  def index
    @venues = Venue.first(20)
  end

  def show
    @checkins = @venue.checkins.order(number_of_visits: :DESC).limit(3)
    @checkin = Checkin.find_by(user_id: @current_user.id, venue_id: @venue.id)
    @my_checkin = @checkin ? @checkin.number_of_visits : 0
  end

  def create
    @venue = Venue.new(venue_params)
    if @venue.save
      puts 'Save success'
      render :show, status: :created
    else
      puts "Something went wrong\n"
      puts @venue.errors.full_messages
      render_error
    end
  end

  private

  def venue_params
    params.require(:venue).permit(:address, :phone, :name, :open_time, :close_time, :discount, :longitude, :latitude, :photo)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def render_error
    render json: { errors: @venue.errors.full_messages },
      status: :unprocessable_entity
  end
end
