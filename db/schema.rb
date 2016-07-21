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

ActiveRecord::Schema.define(version: 20160721131852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "surveys", force: :cascade do |t|
    t.string   "year"
    t.integer  "times_helped"
    t.boolean  "intervention_made"
    t.boolean  "contribution_made"
    t.string   "recommendation_description"
    t.string   "safety_recommendations"
    t.string   "contribution_to_care"
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "user_id"
    t.integer  "efficacy_dose_amount"
    t.integer  "accepted_efficacy_dose_amount"
    t.integer  "efficacy_dose_not_frequent_enough"
    t.integer  "accepted_efficacy_dose_not_frequent_enough"
    t.integer  "efficacy_indication_education"
    t.integer  "accepted_efficacy_indication_education"
    t.integer  "efficacy_therapeutic_selection"
    t.integer  "accepted_efficacy_therapeutic_selection"
    t.integer  "efficacy_immunization_recommendation"
    t.integer  "accepted_efficacy_immunization_reccomendation"
    t.integer  "none_today"
    t.integer  "accepted_none_today"
    t.integer  "efficacy_other"
    t.integer  "accepted_efficacy_other"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
