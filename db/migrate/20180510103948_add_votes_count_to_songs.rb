class AddVotesCountToSongs < ActiveRecord::Migration[5.2]
  def self.up
    add_column :songs, :votes_count, :integer, null: false, default: 0
  end

  def self.down
    remove_column :songs, :votes_count
  end
end
