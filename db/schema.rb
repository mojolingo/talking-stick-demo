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

ActiveRecord::Schema.define(version: 20150917184049) do

  create_table "talking_stick_participants", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "ip",         limit: 255
    t.string   "guid",       limit: 255
    t.datetime "joined_at"
    t.datetime "last_seen"
    t.integer  "room_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "talking_stick_participants", ["guid"], name: "index_talking_stick_participants_on_guid", using: :btree
  add_index "talking_stick_participants", ["room_id"], name: "index_talking_stick_participants_on_room_id", using: :btree

  create_table "talking_stick_rooms", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "last_used"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "slug",       limit: 255
  end

  create_table "talking_stick_signals", force: :cascade do |t|
    t.integer  "room_id",      limit: 4
    t.integer  "sender_id",    limit: 4
    t.integer  "recipient_id", limit: 4
    t.string   "signal_type",  limit: 255
    t.text     "data",         limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "talking_stick_signals", ["recipient_id"], name: "index_talking_stick_signals_on_recipient_id", using: :btree
  add_index "talking_stick_signals", ["sender_id"], name: "index_talking_stick_signals_on_sender_id", using: :btree

end
