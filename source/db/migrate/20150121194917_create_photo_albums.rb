class CreatePhotoAlbums < ActiveRecord::Migration
  def change
    create_table :photo_albums do |t|
      t.integer :photo_id
      t.integer :album_id

      t.timestamps null: false
    end
  end
end
