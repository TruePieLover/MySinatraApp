class Games < ActiveRecord::Base
  include Slugifiable 
  extend Slugifiable 
  belongs_to :Games
  has_one :release_dates
  belongs_to :User
end