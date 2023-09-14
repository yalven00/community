class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.integer :user_id
      t.integer :gallery_id
      t.integer :parent_id
      t.string :content_type
      t.string :filename
      t.string :thumbnail
      t.integer :size
      t.integer :width
      t.integer :height
      t.datetime :created_at

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
