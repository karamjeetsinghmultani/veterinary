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

ActiveRecord::Schema.define(version: 20151202173936) do

  create_table "appointments", force: :cascade do |t|
    t.string   "name"
    t.string   "next_appointment"
    t.string   "reason_for_visit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "customer_pets", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "breed"
    t.integer  "age"
    t.integer  "weight"
    t.string   "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "city"
    t.integer  "zip"
    t.string   "school"
    t.integer  "years_in_practice"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string   "date"
    t.string   "pet"
    t.string   "customer"
    t.boolean  "reminder"
    t.string   "reason_for_visit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
