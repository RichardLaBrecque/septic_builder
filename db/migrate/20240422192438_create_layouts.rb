class CreateLayouts < ActiveRecord::Migration[6.0]
  def change
    create_table :layouts do |t|
      t.float :sqft
      t.references :technology, null: false, foreign_key: true

      t.timestamps
    end
  end
end
