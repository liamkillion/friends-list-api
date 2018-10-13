class CreateFriends < ActiveRecord::Migration[5.2]
  def change
    create_table :friends do |t|
      t.string :name
      t.date :lastDateSeen
      t.integer :desiredFreqeuncy
      t.string :notes
    end
  end
end
