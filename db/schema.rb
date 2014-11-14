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

ActiveRecord::Schema.define(version: 20141114075519) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "flowers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sixcount"
    t.integer  "eightcount"
    t.string   "imagelink"
  end

  create_table "order_items", force: true do |t|
    t.integer  "flower_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
    t.integer  "sixquantity"
    t.integer  "eightquantity"
  end

  create_table "orders", force: true do |t|
    t.string   "customer_email"
    t.string   "phone_number"
    t.string   "pick_up_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "has_payed"
    t.string   "name"
    t.boolean  "delivery"
    t.integer  "total"
    t.string   "address"
  end

  create_table "sessions", force: true do |t|
    t.integer  "admin_id"
    t.string   "ip_address"
    t.string   "session_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
