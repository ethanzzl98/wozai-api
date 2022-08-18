class Api::V1::UsersController < Api::V1::BaseController
  def update
    puts "Start updating"
    @current_user.update(nickname: params[:nickname], avatar_url: params[:avatar_url])
  end
end
