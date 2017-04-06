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

ActiveRecord::Schema.define(version: 20170406181258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clowns", force: :cascade do |t|
    t.string   "name"
    t.text     "costume"
    t.text     "tricks"
    t.integer  "age"
    t.text     "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clowns_parties", force: :cascade do |t|
    t.integer  "clown_id"
    t.integer  "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clown_id"], name: "index_clowns_parties_on_clown_id", using: :btree
    t.index ["party_id"], name: "index_clowns_parties_on_party_id", using: :btree
  end

  create_table "clowns_partys", force: :cascade do |t|
    t.integer  "clown_id"
    t.integer  "party_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["clown_id"], name: "index_clowns_partys_on_clown_id", using: :btree
    t.index ["party_id"], name: "index_clowns_partys_on_party_id", using: :btree
  end

  create_table "parties", force: :cascade do |t|
    t.string   "name"
    t.text     "location"
    t.date     "date"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "clowns_parties", "clowns"
  add_foreign_key "clowns_parties", "parties"
  add_foreign_key "clowns_partys", "clowns"
  add_foreign_key "clowns_partys", "parties"
end
