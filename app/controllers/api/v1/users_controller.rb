class Api::V1::UsersController < Api::V1::BaseController
  def update
    puts "Start updating"
    @current_user.update(nickname: params[:nickname], avatar_url: params[:avatar_url])
  end

  def recent
    count = 5
    @checkins = @current_user.checkins.order(updated_at: :DESC).limit(count)
  end

  def frequent
    count = 5
    @checkins = @current_user.checkins.order(number_of_visits: :DESC).limit(count)
  end

  def status
    @checkins = @current_user.checkins
    @total = @checkins.reduce do |a,b|
      a.number_of_visits + b.number_of_visits
    end
    @count = @checkins.count
  end
end
