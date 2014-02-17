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

ActiveRecord::Schema.define(version: 20140217162207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "speciality"
    t.string   "current_position"
    t.string   "current_company"
    t.string   "time_at_current_company"
    t.text     "technologies"
    t.text     "skills"
    t.string   "birthday"
    t.string   "linkedin"
    t.string   "github"
    t.text     "other_links"
    t.string   "recommended_by"
    t.text     "notes"
    t.text     "initial_speaking_notes"
    t.text     "tech_interview_notes"
    t.text     "vlad_notes"
    t.text     "test_assignment_notes"
    t.boolean  "is_need_speaking",        default: false, null: false
    t.boolean  "is_accepted",             default: false, null: false
    t.boolean  "is_rejected",             default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_working",              default: false, null: false
    t.boolean  "is_not_interested",       default: false, null: false
    t.boolean  "is_interested",           default: false, null: false
    t.string   "skype"
    t.string   "email"
    t.boolean  "is_priority",             default: false, null: false
  end

  add_index "developers", ["birthday"], name: "index_developers_on_birthday", using: :btree
  add_index "developers", ["city"], name: "index_developers_on_city", using: :btree
  add_index "developers", ["current_company"], name: "index_developers_on_current_company", using: :btree
  add_index "developers", ["current_position"], name: "index_developers_on_current_position", using: :btree
  add_index "developers", ["github"], name: "index_developers_on_github", using: :btree
  add_index "developers", ["initial_speaking_notes"], name: "index_developers_on_initial_speaking_notes", using: :btree
  add_index "developers", ["is_accepted"], name: "index_developers_on_is_accepted", using: :btree
  add_index "developers", ["is_rejected"], name: "index_developers_on_is_rejected", using: :btree
  add_index "developers", ["linkedin"], name: "index_developers_on_linkedin", using: :btree
  add_index "developers", ["name"], name: "index_developers_on_name", unique: true, using: :btree
  add_index "developers", ["notes"], name: "index_developers_on_notes", using: :btree
  add_index "developers", ["other_links"], name: "index_developers_on_other_links", using: :btree
  add_index "developers", ["recommended_by"], name: "index_developers_on_recommended_by", using: :btree
  add_index "developers", ["skills"], name: "index_developers_on_skills", using: :btree
  add_index "developers", ["speciality"], name: "index_developers_on_speciality", using: :btree
  add_index "developers", ["tech_interview_notes"], name: "index_developers_on_tech_interview_notes", using: :btree
  add_index "developers", ["technologies"], name: "index_developers_on_technologies", using: :btree
  add_index "developers", ["test_assignment_notes"], name: "index_developers_on_test_assignment_notes", using: :btree
  add_index "developers", ["time_at_current_company"], name: "index_developers_on_time_at_current_company", using: :btree
  add_index "developers", ["vlad_notes"], name: "index_developers_on_vlad_notes", using: :btree

end
