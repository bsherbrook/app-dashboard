class CreateAppitems < ActiveRecord::Migration[7.1]
  def change
    create_table :appitems do |t|
      t.string :name
      t.string :description
      t.string :color
      t.string :default_status
      t.string :link
      t.integer :position

      t.timestamps
    end
  end
end
