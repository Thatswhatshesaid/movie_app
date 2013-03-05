class Movie < ActiveRecord::Base
  attr_accessible :moviename, :rating, :username
end
