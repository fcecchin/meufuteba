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

ActiveRecord::Schema.define(version: 20140526174927) do

  create_table "leagues", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name",       limit: 50, null: false
  end

  create_table "players", force: true do |t|
    t.datetime "deleted_at"
    t.integer  "team_id"
    t.integer  "user_id"
    t.string   "name",       limit: 100,                 null: false
    t.string   "position",   limit: 50
    t.integer  "number",                                 null: false
    t.boolean  "retired",                default: false
    t.boolean  "injured",                default: false
    t.date     "born_on"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
    t.integer  "division_id"
    t.string   "name",           limit: 50
    t.string   "logo_url"
    t.string   "manager",        limit: 100, null: false
    t.string   "ballpark",       limit: 100
    t.string   "mascot",         limit: 100
    t.integer  "founded"
    t.integer  "wins"
    t.integer  "losses"
    t.float    "win_percentage"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
