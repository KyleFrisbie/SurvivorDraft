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

ActiveRecord::Schema.define(version: 20160215011440) do

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "points"
    t.integer  "place"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players_survivors", force: true do |t|
    t.integer  "player_id"
    t.integer  "survivor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "players_survivors", ["player_id"], name: "index_players_survivors_on_player_id"
  add_index "players_survivors", ["survivor_id"], name: "index_players_survivors_on_survivor_id"

  create_table "survivors", force: true do |t|
    t.string   "name"
    t.integer  "tribe_id"
    t.integer  "elimination_number"
    t.string   "photo_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tribes", force: true do |t|
    t.string   "name"
    t.integer  "survivor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
