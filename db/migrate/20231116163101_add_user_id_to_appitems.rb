class AddUserIdToAppitems < ActiveRecord::Migration[7.1]
  def change
    add_column :appitems, :user_id, :integer
    add_index :appitems, :user_id
  end
end
