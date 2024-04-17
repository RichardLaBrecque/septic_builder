class TestHole < ApplicationRecord
  belongs_to :property
  after_create :set_test_number

  def set_test_number
    self.update(test_number: self.property.test_holes.count)
  end

  def required_square_feet
    (property.gallons_per_day / load_rate_float).round(2)
  end

  def load_rate_float
    load_rate * 0.01
  end
end
