class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.string :photo_url
      t.string :instagram_url
      t.boolean :selected

      t.timestamps null: false
    end
  end
end
