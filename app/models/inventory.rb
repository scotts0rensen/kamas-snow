class Inventory < ActiveRecord::Base
  validates :date, presence: true
end
