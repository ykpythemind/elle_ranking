class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title

      t.timestamps
    end
    add_index :songs, :title, unique: true
  end
end
