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

ActiveRecord::Schema.define(version: 20180621064035) do

  create_table "contacts", force: :cascade do |t|
    t.integer  "enquiry",      limit: 4,     null: false
    t.string   "company_name", limit: 255,   null: false
    t.string   "department",   limit: 255,   null: false
    t.string   "user_name",    limit: 255,   null: false
    t.string   "email",        limit: 255,   null: false
    t.integer  "tel_number",   limit: 4,     null: false
    t.text     "company_url",  limit: 65535
    t.boolean  "task",                       null: false
    t.text     "remarks",      limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contacts", ["company_name"], name: "index_contacts_on_company_name", using: :btree

  create_table "stories", force: :cascade do |t|
    t.string   "title",       limit: 255,   null: false
    t.string   "sub_title",   limit: 255,   null: false
    t.integer  "user_id",     limit: 4
    t.string   "logo",        limit: 255,   null: false
    t.text     "read",        limit: 65535, null: false
    t.string   "picture",     limit: 255,   null: false
    t.string   "description", limit: 255,   null: false
    t.text     "content",     limit: 65535, null: false
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "stories", ["user_id"], name: "fk_rails_c53f5feaac", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "name",                   limit: 255
    t.text     "overview",               limit: 65535
    t.string   "representative",         limit: 255
    t.date     "foundation"
    t.text     "address",                limit: 65535
    t.text     "vision",                 limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "stories", "users"
end
