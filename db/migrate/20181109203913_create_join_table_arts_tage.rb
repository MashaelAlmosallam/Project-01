class CreateJoinTableArtsTage < ActiveRecord::Migration[5.2]
  def change
    create_join_table :arts, :tags, id: false do |t|
      # t.index [:art_id, :tag_id]
      # t.index [:tag_id, :art_id]
    end
  end
end
