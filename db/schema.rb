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

ActiveRecord::Schema.define(version: 2020_11_20_084828) do

  create_table "trucks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.string "city"
    t.string "zip_code"
    t.string "street_address"
    t.string "country"
    t.text "description"
    t.string "image"
    t.boolean "saved", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.integer "state", default: 0
    t.string "phone"
    t.index ["category"], name: "index_trucks_on_category"
    t.index ["name"], name: "index_trucks_on_name"
    t.index ["street_address"], name: "index_trucks_on_street_address"
  end

end
