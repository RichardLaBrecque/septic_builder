class Technology < ApplicationRecord
  def report(square_feet)
  "#{(square_feet / self.sqft).ceil} #{self.unit.pluralize}"
  end
end
