class CreateNewApps < ActiveRecord::Migration[7.1]
  def change
    create_table :new_apps do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :link
      t.integer :position

      t.timestamps
    end
  end
end
