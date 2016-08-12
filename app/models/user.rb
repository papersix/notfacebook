class User < ActiveRecord::Base




  def fbk
    facebook = Koala::Facebook::API.new(access_token)
  end
end
