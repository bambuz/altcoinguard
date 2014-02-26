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

ActiveRecord::Schema.define(version: 20140226152049) do

  create_table "coin_infos", force: true do |t|
    t.integer  "totalcoins"
    t.float    "coinsperblock"
    t.integer  "coin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "coin_infos", ["coin_id"], name: "index_coin_infos_on_coin_id"

  create_table "coins", force: true do |t|
    t.string   "name"
    t.string   "thumbnail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exchanges", force: true do |t|
    t.string   "name"
    t.float    "hashrate"
    t.integer  "coin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exchanges", ["coin_id"], name: "index_exchanges_on_coin_id"

  create_table "pools", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.integer  "coin_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pools", ["coin_id"], name: "index_pools_on_coin_id"

end
