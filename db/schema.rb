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

ActiveRecord::Schema.define(version: 20140209173231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: true do |t|
    t.string   "name"
    t.string   "city"
    t.string   "current_position"
    t.string   "current_company"
    t.string   "time_at_current_company"
    t.text     "technologies"
    t.text     "skills"
    t.string   "birthday"
    t.text     "links"
    t.text     "recommended_by"
    t.text     "notes"
    t.text     "initial_speaking_notes"
    t.text     "tech_interview_notes"
    t.text     "vlad_notes"
    t.text     "test_assignment_notes"
    t.boolean  "is_accepted"
    t.boolean  "is_rejected"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "developers", ["birthday"], name: "index_developers_on_birthday", using: :btree
  add_index "developers", ["city"], name: "index_developers_on_city", using: :btree
  add_index "developers", ["current_company"], name: "index_developers_on_current_company", using: :btree
  add_index "developers", ["current_position"], name: "index_developers_on_current_position", using: :btree
  add_index "developers", ["initial_speaking_notes"], name: "index_developers_on_initial_speaking_notes", using: :btree
  add_index "developers", ["is_accepted"], name: "index_developers_on_is_accepted", using: :btree
  add_index "developers", ["is_rejected"], name: "index_developers_on_is_rejected", using: :btree
  add_index "developers", ["links"], name: "index_developers_on_links", using: :btree
  add_index "developers", ["name"], name: "index_developers_on_name", unique: true, using: :btree
  add_index "developers", ["notes"], name: "index_developers_on_notes", using: :btree
  add_index "developers", ["recommended_by"], name: "index_developers_on_recommended_by", using: :btree
  add_index "developers", ["skills"], name: "index_developers_on_skills", using: :btree
  add_index "developers", ["tech_interview_notes"], name: "index_developers_on_tech_interview_notes", using: :btree
  add_index "developers", ["technologies"], name: "index_developers_on_technologies", using: :btree
  add_index "developers", ["test_assignment_notes"], name: "index_developers_on_test_assignment_notes", using: :btree
  add_index "developers", ["time_at_current_company"], name: "index_developers_on_time_at_current_company", using: :btree
  add_index "developers", ["vlad_notes"], name: "index_developers_on_vlad_notes", using: :btree

end
