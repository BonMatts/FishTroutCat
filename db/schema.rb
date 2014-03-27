# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140327004001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commodities", force: true do |t|
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "code"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sales", force: true do |t|
    t.float    "amount"
    t.string   "unit"
    t.integer  "commodity_id"
    t.integer  "when_id"
    t.integer  "location_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["commodity_id"], name: "index_sales_on_commodity_id", using: :btree
  add_index "sales", ["location_id"], name: "index_sales_on_location_id", using: :btree
  add_index "sales", ["when_id"], name: "index_sales_on_when_id", using: :btree

  create_table "whens", force: true do |t|
    t.integer  "year"
    t.integer  "time_period"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
