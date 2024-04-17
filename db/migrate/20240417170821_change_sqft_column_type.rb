class ChangeSqftColumnType < ActiveRecord::Migration[6.0]
  def change
    change_column :technologies, :sqft, :float
  end
end