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

ActiveRecord::Schema.define(version: 20160216033027) do

  create_table "players", force: true do |t|
    t.string   "name"
    t.integer  "points"
    t.integer  "place"
    t.integer  "wins"
    t.integer  "losses"
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

  create_table "seasons", force: true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "seasons_survivors", force: true do |t|
    t.integer  "season_id"
    t.integer  "survivor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "seasons_survivors", ["season_id"], name: "index_seasons_survivors_on_season_id"
  add_index "seasons_survivors", ["survivor_id"], name: "index_seasons_survivors_on_survivor_id"

  create_table "survivors", force: true do |t|
    t.string   "name"
    t.integer  "age"
    t.string   "residence"
    t.string   "photo_url"
    t.boolean  "fantasy"
    t.integer  "elimination_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "survivors_tribes", force: true do |t|
    t.integer  "survivor_id"
    t.integer  "tribe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "survivors_tribes", ["survivor_id"], name: "index_survivors_tribes_on_survivor_id"
  add_index "survivors_tribes", ["tribe_id"], name: "index_survivors_tribes_on_tribe_id"

  create_table "tribes", force: true do |t|
    t.string   "name"
    t.integer  "tribe_generation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "immunity_wins"
    t.integer  "reward_wins"
  end

end
