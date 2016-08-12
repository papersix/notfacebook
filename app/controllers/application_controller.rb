class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def koala_events(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=events")
  end

  def koala_name_picture(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture")
  end


end


