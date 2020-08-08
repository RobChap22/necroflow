# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_08_080218) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gangs", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "territories", force: :cascade do |t|
    t.string "name"
    t.string "pre_battle"
    t.string "post_battle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "turves", force: :cascade do |t|
    t.bigint "gang_id", null: false
    t.bigint "territory_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["gang_id"], name: "index_turves_on_gang_id"
    t.index ["territory_id"], name: "index_turves_on_territory_id"
  end

  add_foreign_key "turves", "gangs"
  add_foreign_key "turves", "territories"
end
