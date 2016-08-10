class EventsgetController < ApplicationController

  def index
  #some way to access facebook & get the json back - http party? koala?
    # access_token = request.env['omniauth.auth']
    # facebook = Koala::Facebook::API.new(access_token)
    # response = facebook.get_object("me?fields=events")
    # parsed_body = JSON.parse(response.body)
    # render json: parsed_body

  end



end

