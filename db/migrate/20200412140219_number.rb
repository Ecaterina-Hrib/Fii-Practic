class Number < ActiveRecord::Migration[6.0]
  def change
    create_table :numbers do |t|
      t.integer :game_id
      t.integer :stoc
      t.timestamps
    end
  end
end
