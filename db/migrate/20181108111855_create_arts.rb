class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
