class Reviews < ActiveRecord::Base
  include Slugifiable 
  extend Slugifiable 
  belongs_to :review
  has_one :review
  belongs_to :user
end