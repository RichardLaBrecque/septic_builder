# == Schema Information
#
# Table name: properties
#
#  id           :bigint           not null, primary key
#  city         :string
#  design_unit  :integer
#  flow_rate    :integer
#  notes        :text
#  number       :integer
#  street       :string
#  water_source :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_properties_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Property < ApplicationRecord
  belongs_to :user
  has_many :test_holes

  enum water_source: {
    public_water: 0,
    public_well: 1,
    private_well: 2
    }

  def gallons_per_day
    flow_rate * design_unit
  end
end
