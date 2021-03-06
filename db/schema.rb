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

ActiveRecord::Schema.define(version: 20151218224237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.integer  "instructor_id"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "exit_tickets", force: :cascade do |t|
    t.date     "date"
    t.integer  "cohort_id"
    t.integer  "instructor_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "instructors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "producers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "cohort_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer  "exit_ticket_id"
    t.text     "question"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "responses", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "student_id"
    t.text     "response"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "exit_ticket_id"
  end

  add_index "responses", ["exit_ticket_id"], name: "index_responses_on_exit_ticket_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.integer  "cohort_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
