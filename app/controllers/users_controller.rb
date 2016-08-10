class UsersController < ApplicationController

  def index

  end

  def login
    @user = User.koala_name_picture(request.env['omniauth.auth']['credentials'])
    @events = User.koala_events(request.env['omniauth.auth']['credentials'])
    puts @user
    puts @events
  end

end
