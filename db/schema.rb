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

ActiveRecord::Schema.define(version: 20160817022456) do

  create_table "avatars", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.string   "face",             limit: 255
    t.string   "hair",             limit: 255
    t.string   "eyes",             limit: 255
    t.string   "skin",             limit: 255
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "background_color", limit: 255, default: "#78B5CA"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name",            limit: 255
    t.string "primary_phone",   limit: 255
    t.string "secondary_phone", limit: 255
    t.string "primary_email",   limit: 255
    t.string "secondary_email", limit: 255
  end

  create_table "events", force: :cascade do |t|
    t.string   "title",              limit: 255,   default: "Event Title", null: false
    t.text     "description",        limit: 65535
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "image",              limit: 255
    t.string   "last_modified_by",   limit: 255
    t.datetime "last_modified_date"
    t.boolean  "active",                           default: false
  end

  create_table "life_group_demographics", force: :cascade do |t|
    t.boolean  "all_welcome"
    t.boolean  "singles"
    t.boolean  "unmarried_couples"
    t.boolean  "married_couples"
    t.boolean  "with_kids"
    t.integer  "life_group_id",     limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "without_kids"
  end

  add_index "life_group_demographics", ["life_group_id"], name: "fk_rails_a03e6a4869", using: :btree

  create_table "life_groups", force: :cascade do |t|
    t.string   "name",          limit: 255
    t.string   "day",           limit: 255
    t.string   "start_time",    limit: 255
    t.string   "end_time",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "location",      limit: 255
    t.integer  "group_lead_id", limit: 4
    t.string   "notes",         limit: 255
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",      null: false
    t.string   "encrypted_password",     limit: 255, default: "",      null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email",      limit: 255
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "role",                   limit: 255, default: "guest"
    t.boolean  "send_emails",                        default: true
    t.string   "gender",                 limit: 255, default: "male"
    t.string   "first_name",             limit: 255, default: "",      null: false
    t.string   "last_name",              limit: 255, default: "",      null: false
    t.string   "role_description",       limit: 255, default: "guest"
    t.boolean  "staff",                              default: false
    t.integer  "life_group_id",          limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_events", id: false, force: :cascade do |t|
    t.integer "user_id",  limit: 4
    t.integer "event_id", limit: 4
  end

  add_index "users_events", ["event_id"], name: "index_users_events_on_event_id", using: :btree
  add_index "users_events", ["user_id"], name: "index_users_events_on_user_id", using: :btree

  create_table "welcome_contents", force: :cascade do |t|
    t.string   "page_name",          limit: 255
    t.text     "html_content",       limit: 65535
    t.string   "last_modified_by",   limit: 255
    t.datetime "last_modified_date"
  end

  add_foreign_key "life_group_demographics", "life_groups"
end
