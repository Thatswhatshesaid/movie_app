class User < ActiveRecord::Base
  attr_accessible :Movie, :Rating, :name
end
