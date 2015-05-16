class Shift < ActiveRecord::Base
  validates :date, presence: true
  default_scope { order('date') }
end
