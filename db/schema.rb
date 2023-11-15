ActiveRecord::Schema[7.1].define(version: 2023_11_15_203725) do
  create_table "appitems", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "color"
    t.string "default_status"
    t.string "link"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
