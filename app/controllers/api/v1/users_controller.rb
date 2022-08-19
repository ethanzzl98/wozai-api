class Api::V1::UsersController < Api::V1::BaseController
  def update
    puts "Start updating"
    @current_user.update(nickname: params[:nickname], avatar_url: params[:avatar_url])
  end

  def recent
    recent_count = 3
    @checkins = @current_user.checkins.order(updated_at: :DESC).limit(recent_count)
  end

  def frequent
    recent_count = 3
    @checkins = @current_user.checkins.order(number_of_visits: :DESC).limit(recent_count)
  end
end
