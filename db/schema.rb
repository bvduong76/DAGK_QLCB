# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161023034726) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "changbays", force: :cascade do |t|
    t.string  "ma"
    t.integer "noidi",  null: false
    t.integer "noiden", null: false
    t.date    "ngay",   null: false
    t.time    "gio",    null: false
    t.index ["noidi", "noiden", "ngay", "gio"], name: "index_changbays_on_noidi_and_noiden_and_ngay_and_gio", unique: true, using: :btree
  end

  create_table "chuyenbays", force: :cascade do |t|
    t.integer "machangbay"
    t.float   "giaban"
    t.integer "soluong"
    t.index ["machangbay", "giaban"], name: "index_chuyenbays_on_machangbay_and_giaban", unique: true, using: :btree
  end

  create_table "hanhtrinhs", force: :cascade do |t|
    t.integer "sanbaydi",  null: false
    t.integer "sanbayden", null: false
    t.index ["sanbaydi", "sanbayden"], name: "index_hanhtrinhs_on_sanbaydi_and_sanbayden", unique: true, using: :btree
  end

  create_table "sanbays", force: :cascade do |t|
    t.string "masanbay"
    t.string "tensanbay"
  end

  add_foreign_key "changbays", "sanbays", column: "noiden"
  add_foreign_key "changbays", "sanbays", column: "noidi"
  add_foreign_key "chuyenbays", "changbays", column: "machangbay"
  add_foreign_key "hanhtrinhs", "sanbays", column: "sanbayden"
  add_foreign_key "hanhtrinhs", "sanbays", column: "sanbaydi"
end
