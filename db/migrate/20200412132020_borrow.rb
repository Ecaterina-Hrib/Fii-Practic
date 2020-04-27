class Borrow < ActiveRecord::Migration[6.0]
  def change
    create_table :borrowed do |t|
      t.integer :account_id
      t.integer :game_id
      t.timestamps
    end
  end
end
