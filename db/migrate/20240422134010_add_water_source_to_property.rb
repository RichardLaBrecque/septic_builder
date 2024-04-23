class AddWaterSourceToProperty < ActiveRecord::Migration[6.0]
  def change
    add_column :properties, :water_source, :integer
  end
end
