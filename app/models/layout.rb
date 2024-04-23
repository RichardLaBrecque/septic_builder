# == Schema Information
#
# Table name: layouts
#
#  id            :bigint           not null, primary key
#  layout_image  :string
#  sqft          :float
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  technology_id :bigint           not null
#
# Indexes
#
#  index_layouts_on_technology_id  (technology_id)
#
# Foreign Keys
#
#  fk_rails_...  (technology_id => technologies.id)
#
class Layout < ApplicationRecord
  belongs_to :technology

  mount_uploader :layout_image, LayoutImageUploader
end
