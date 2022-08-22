class Api::V1::CheckinsController < Api::V1::BaseController
  before_action :set_venue, :set_checkin

  def index
    @checkins = @venue.checkins.order(number_of_visits: :DESC).limit(3)
    @my_checkin = @checkin ? @checkin.number_of_visits : 0
  end

  def create
    rand = Random.new
    puts "current_user_id: #{@current_user.id}"

    if @checkin
      @checkin.number_of_visits += 1
    else
      @checkin = Checkin.new(user_id: @user_id, venue_id: @venue_id)
    end
    if @checkin.save
      index
      render :index
    else
      render_error
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:venue_id])
  end

  def set_checkin
    @user_id = @current_user.id || rand.rand(1..10)
    @venue_id = @venue.id
    @checkin = Checkin.find_by(user_id: @user_id, venue_id: @venue_id)
  end

  def render_error
    render json: { errors: @checkin.errors.full_messages }, status: :unprocessable_entity
  end
end
