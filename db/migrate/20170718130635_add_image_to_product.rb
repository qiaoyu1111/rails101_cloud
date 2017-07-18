class AddImageToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :clouds, :image, :string
  end
end
