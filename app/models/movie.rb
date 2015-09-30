class Movie < ActiveRecord::Base
  has_many :review
end