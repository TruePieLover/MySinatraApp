class ReleaseDates < ActiveRecord::Base
  include Slugifiable 
  extend Slugifiable 
  belongs_to :release_dates
  has_one :release_dates
  belongs_to :User
end