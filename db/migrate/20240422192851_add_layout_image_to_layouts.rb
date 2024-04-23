class AddLayoutImageToLayouts < ActiveRecord::Migration[6.0]
  def change
    add_column :layouts, :layout_image, :string
  end
end
