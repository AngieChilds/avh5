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

ActiveRecord::Schema.define(version: 20131118213823) do

  create_table "animals", force: true do |t|
    t.string   "breed"
    t.string   "owner"
    t.string   "name"
    t.integer  "hunger"
    t.integer  "food"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horselists", force: true do |t|
    t.string   "player"
    t.string   "horse"
    t.integer  "currant_level"
    t.string   "range"
    t.datetime "date"
    t.string   "note"
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "range1"
    t.string   "range2"
    t.string   "range3"
    t.string   "range4"
    t.string   "range5"
    t.string   "range6"
    t.string   "range7"
    t.string   "range8"
    t.string   "range9"
    t.string   "range10"
  end

  create_table "requests", force: true do |t|
    t.string   "spec"
    t.datetime "date"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showblogs", force: true do |t|
    t.string   "name"
    t.datetime "rundate"
    t.string   "spec_choice"
    t.string   "level_range"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "showruns", force: true do |t|
    t.string   "player"
    t.string   "spec_vote"
    t.integer  "event"
    t.string   "make_other"
    t.string   "note_showrun"
    t.integer  "level"
    t.integer  "show_count"
    t.integer  "showblog_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "showruns", ["showblog_id"], name: "index_showruns_on_showblog_id"

end
