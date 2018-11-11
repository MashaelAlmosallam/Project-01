class AddImageToArts < ActiveRecord::Migration[5.2]
  def change
    add_column :arts, :image, :string
  end
end
