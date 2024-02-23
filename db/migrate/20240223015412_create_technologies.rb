class CreateTechnologies < ActiveRecord::Migration[6.0]
  def change
    create_table :technologies do |t|
      t.string :make
      t.string :model
      t.integer :sqft
      t.text :unit

      t.timestamps
    end
  end
end
