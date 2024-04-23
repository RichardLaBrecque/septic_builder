# == Schema Information
#
# Table name: test_holes
#
#  id          :bigint           not null, primary key
#  date        :datetime
#  ledge_depth :integer
#  load_rate   :integer
#  shwt        :integer
#  test_number :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  property_id :bigint           not null
#
# Indexes
#
#  index_test_holes_on_property_id  (property_id)
#
# Foreign Keys
#
#  fk_rails_...  (property_id => properties.id)
#
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
