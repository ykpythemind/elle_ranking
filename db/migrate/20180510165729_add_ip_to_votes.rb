class AddIpToVotes < ActiveRecord::Migration[5.2]
  def change
    add_column :votes, :ip, :string
  end
end
