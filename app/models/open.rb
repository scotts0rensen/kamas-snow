class Open < ActiveRecord::Base
  has_many :details, :class_name => "Open"
  validates :date, presence: true
end
