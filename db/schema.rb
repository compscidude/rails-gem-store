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

ActiveRecord::Schema.define(version: 20170414074927) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.integer  "gem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "price"
    t.integer  "item_type"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "item_id"
    t.integer  "accumulative"
    t.index ["item_id"], name: "index_transactions_on_item_id"
    t.index ["user_id"], name: "index_transactions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "gem"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
