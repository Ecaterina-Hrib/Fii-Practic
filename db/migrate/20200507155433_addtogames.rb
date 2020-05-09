class Addtogames < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :is_admin, :boolean, default: false
    add_column :games, :stoc, :integer
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
