class CreateDetails < ActiveRecord::Migration
  def self.up
    create_table :details do |t|
      t.integer :user_id
      t.string :headline
      t.text :about_me
      t.text :like_to_meet
      t.text :interests
      t.text :music
      t.text :movies
      t.text :television
      t.text :books

      t.timestamps
    end
  end

  def self.down
    drop_table :details
  end
end
