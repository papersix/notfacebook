class UsersController < ApplicationController

  def index

  end

  def login
    @user = koala_name_picture(request.env['omniauth.auth']['credentials'])
    @events = koala_events(request.env['omniauth.auth']['credentials'])
    # byebug
    puts @user
    puts @events
  end

end
