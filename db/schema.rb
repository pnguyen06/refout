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

ActiveRecord::Schema.define(version: 20140219004018) do

  create_table "admins", force: true do |t|
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
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "headhunters", force: true do |t|
    t.string   "CompanyName"
    t.string   "CompanyDescription"
    t.string   "CompanyEmail"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "CompanyWebsite"
    t.string   "CompanyLinkedin"
    t.boolean  "CompanyUndergrad"
    t.boolean  "CompanyPreMBA"
    t.boolean  "CompanyPostMBA"
    t.boolean  "CompanyExecutive"
    t.string   "CompanyCandidateArea"
    t.string   "street1"
    t.string   "city1"
    t.string   "phone1"
    t.string   "street2"
    t.string   "city2"
    t.string   "phone2"
    t.string   "street3"
    t.string   "city3"
    t.string   "phone3"
    t.string   "CompanyFacebook"
    t.string   "CompanyTwitter"
    t.text     "CompanyJobs"
  end

  create_table "recruiters", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.string   "linkedin"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "headhunter_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "recruiters", ["headhunter_id"], name: "index_recruiters_on_headhunter_id"

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
    t.boolean  "admin"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
