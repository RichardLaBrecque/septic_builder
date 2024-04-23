# == Schema Information
#
# Table name: technologies
#
#  id         :bigint           not null, primary key
#  make       :string
#  model      :string
#  sqft       :float
#  unit       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Technology < ApplicationRecord
  has_many :layouts
    
  def report(square_feet)
  "#{(square_feet / self.sqft).ceil} #{self.unit.pluralize}"
  end
end
