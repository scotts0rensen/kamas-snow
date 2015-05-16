class Close < ActiveRecord::Base
  has_many :open_details
  default_scope { order('date') }
end
