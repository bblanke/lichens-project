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

ActiveRecord::Schema.define(version: 20131116062627) do

  create_table "lichens", force: true do |t|
    t.integer  "quadrant_id"
    t.string   "species"
    t.string   "pcover"
    t.string   "growth"
    t.string   "ascomata"
    t.string   "issored"
    t.string   "cyano"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lichens_quadrants", id: false, force: true do |t|
    t.integer "lichen_id",   null: false
    t.integer "quadrant_id", null: false
  end

  create_table "quadrants", force: true do |t|
    t.integer  "tree_id"
    t.integer  "qnum"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "trees", force: true do |t|
    t.integer  "user_id"
    t.date     "date"
    t.string   "species"
    t.integer  "circum"
    t.string   "light"
    t.decimal  "lat",                null: false
    t.decimal  "long",               null: false
    t.integer  "droad"
    t.integer  "dwater"
    t.integer  "direction"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "pleaf_file_name"
    t.string   "pleaf_content_type"
    t.integer  "pleaf_file_size"
    t.datetime "pleaf_updated_at"
    t.string   "parea_file_name"
    t.string   "parea_content_type"
    t.integer  "parea_file_size"
    t.datetime "parea_updated_at"
    t.string   "ptree_file_name"
    t.string   "ptree_content_type"
    t.integer  "ptree_file_size"
    t.datetime "ptree_updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "quiz",                   default: false
    t.boolean  "admin",                  default: false
    t.string   "name"
    t.string   "authentication_token"
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
