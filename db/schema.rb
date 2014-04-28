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

ActiveRecord::Schema.define(version: 20140428122100) do

  create_table "barrels", force: true do |t|
    t.string   "type"
    t.float    "net_weight"
    t.float    "tare"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barrels_incomes", force: true do |t|
    t.string   "nro_remit"
    t.integer  "producer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "barrels_movements", id: false, force: true do |t|
    t.integer "barrel_id"
    t.integer "movement_id"
  end

  create_table "drawer_containers", force: true do |t|
    t.integer  "drawers"
    t.integer  "movement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drawer_conteiner_incomes", force: true do |t|
    t.string   "nro_remit"
    t.integer  "producer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "producers", force: true do |t|
    t.string   "dni"
    t.string   "name"
    t.string   "last_name"
    t.string   "telephone"
    t.string   "address"
    t.string   "renapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "waxes", force: true do |t|
    t.float    "weight"
    t.integer  "movement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
