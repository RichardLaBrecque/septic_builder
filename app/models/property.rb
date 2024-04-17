class Property < ApplicationRecord
  belongs_to :user
  has_many :test_holes

  def gallons_per_day
    flow_rate * design_unit
  end
end
