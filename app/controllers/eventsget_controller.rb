class EventsgetController < ApplicationController

  def index
  # some way to access facebook & get the json back - http party? koala?


    # @user = koala_name_picture(request.env['omniauth.auth']['credentials'])
    @events = koala_events(request.env['omniauth.auth']['credentials'])
    puts @events
  end

  # def self.koala_events(auth)
  #     access_token = auth['token']
  #     facebook = Koala::Facebook::API.new(access_token)
  #     facebook.get_object("me?fields=events")
  #     parsed_body = JSON.parse(response.body)
  #     render json: parsed_body

  # end



end

