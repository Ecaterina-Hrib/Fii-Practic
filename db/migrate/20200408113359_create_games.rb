class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references  :account
      t.string :name
      t.string :distribution
      t.string :type
      t.text :description
      t.integer :price
      t.string :photo
      t.timestamps
    end
  end
end
