class Api::V1::VenuesController < Api::V1::BaseController
  before_action :set_venue, only: %i[show update destroy]

  def index
    @venues = Venue.all
  end

  def show
    @checkins = @venue.checkins.order(number_of_visits: :DESC).limit(3)
    @checkin = Checkin.find_by(user_id: @current_user.id, venue_id: @venue.id)
    @my_checkin = @checkin ? @checkin.number_of_visits : 0
    if @checkin
      @ranking = @venue.checkins.order(created_at: :ASC).find_index { |checkin| checkin.user_id == @current_user.id } + 1
    else
      @ranking = 0
    end
  end

  def create
    @venue = Venue.new(venue_params)

    venue_categories = params[:categories]
    venue_categories.each do |category|
      @venue.categories << Category.find_by(name: category)
    end

    if @venue.save
      puts 'Save success'
      render :show, status: :created

    else
      puts "Something went wrong\n"
      puts @venue.errors.full_messages
      render_error
    end
  end

  def upload
    @venue = Venue.find(params[:venue_id])
    if @venue.photo.attach(params.require(:file))
      render json: { msg: 'photo uploaded' }
    else
      render json: { err: 'fail to upload' }
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
