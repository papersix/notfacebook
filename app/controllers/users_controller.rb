class UsersController < ApplicationController

  def index

  end

  def login
    @user = User.koala_name_picture(request.env['omniauth.auth']['credentials'])
    @events = User.koala_events(request.env['omniauth.auth']['credentials']).first(10)
    # byebug
    puts @user
    puts @events
    # render :json => {user: @user, events: @events}
  end



end
