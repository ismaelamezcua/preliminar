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

ActiveRecord::Schema.define(version: 20160417195556) do

  create_table "checkpoints", force: :cascade do |t|
    t.time     "arrival"
    t.time     "departure"
    t.date     "date"
    t.integer  "barcode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "departments", force: :cascade do |t|
    t.string   "name"
    t.time     "arrival_time"
    t.time     "departure_time"
    t.integer  "arrival_tolerance"
    t.integer  "departure_tolerance"
    t.integer  "working_hours"
    t.time     "lunch_start"
    t.time     "lunch_finish"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string   "name"
    t.integer  "barcode"
    t.integer  "department_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

end
