class CreateHangs < ActiveRecord::Migration[5.2]
  def change
    create_table :hangs do |t|
      t.integer :friend_id
      t.string :date
      t.string :activity
      t.boolean :didHang
    end
  end
end
