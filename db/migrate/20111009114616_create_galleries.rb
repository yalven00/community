class CreateGalleries < ActiveRecord::Migration
  def self.up
    create_table :galleries do |t|
      t.integer :user_id
      t.string :name
      t.text :description
      t.datetime :created_at
      t.integer :photos_count
      t.string :privacy

      t.timestamps
    end
  end

  def self.down
    drop_table :galleries
  end
end
