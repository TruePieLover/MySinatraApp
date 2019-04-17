#Include and extend slugify to make it easier to handle
include Slugifiable 
extend Slugifiable 
has_secure_password
has_many :games