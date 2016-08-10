class User < ActiveRecord::Base

  def self.koala_name_picture(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=name,picture")
  end

  def self.koala_events(auth)
    access_token = auth['token']
    facebook = Koala::Facebook::API.new(access_token)
    facebook.get_object("me?fields=events")
  end

  def fbk
    facebook = Koala::Facebook::API.new(access_token)
  end
end
