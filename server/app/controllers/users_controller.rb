class UsersController < ApplicationController
  def join
    puts params
    user = User.new
    user.name = params["name"]
    user.alive = true
    user.save

    render json: User.all
  end
end
