class CreateTestHoles < ActiveRecord::Migration[6.0]
  def change
    create_table :test_holes do |t|
      t.integer :load_rate
      t.integer :ledge_depth
      t.integer :shwt
      t.references :property, null: false, foreign_key: true
      t.datetime :date
      t.integer :test_number

      t.timestamps
    end
  end
end
