class CreateVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :votes do |t|
      t.belongs_to :song, foreign_key: true
      t.string :body
      t.string :name

      t.timestamps
    end
  end
end
