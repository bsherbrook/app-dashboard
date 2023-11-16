class AddUserPickToAppitem < ActiveRecord::Migration[7.1]
  def change
    add_column :appitems, :user_pick, :string
  end
end
