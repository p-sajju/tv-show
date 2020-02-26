class Show < ActiveRecord::Base
  belongs_to :channel
  has_many :user_fav_shows
end
