class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties do |t|
      t.string :city
      t.string :street
      t.integer :number
      t.integer :design_unit
      t.integer :flow_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
