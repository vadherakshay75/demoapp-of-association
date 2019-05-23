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

ActiveRecord::Schema.define(version: 2039_25_09_050345) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.text "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors_students", force: :cascade do |t|
    t.bigint "student_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentor_id"], name: "index_mentors_students_on_mentor_id"
    t.index ["student_id"], name: "index_mentors_students_on_student_id"
  end

  create_table "names", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "mother_name"
    t.string "father_name"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_parents_on_student_id"
  end

  create_table "principals", force: :cascade do |t|
    t.string "name"
    t.bigint "std_principal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["std_principal_id"], name: "index_principals_on_std_principal_id"
  end

  create_table "standards", force: :cascade do |t|
    t.integer "standard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "std_principals", force: :cascade do |t|
    t.bigint "principal_id"
    t.bigint "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["principal_id"], name: "index_std_principals_on_principal_id"
    t.index ["student_id"], name: "index_std_principals_on_student_id"
  end

  create_table "std_subjects", force: :cascade do |t|
    t.bigint "standard_id"
    t.bigint "subject_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["standard_id"], name: "index_std_subjects_on_standard_id"
    t.index ["subject_id"], name: "index_std_subjects_on_subject_id"
  end

  create_table "students", force: :cascade do |t|
    t.bigint "address_id"
    t.bigint "name_id"
    t.bigint "standard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_students_on_address_id"
    t.index ["name_id"], name: "index_students_on_name_id"
    t.index ["standard_id"], name: "index_students_on_standard_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "subject_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "mentors_students", "mentors"
  add_foreign_key "mentors_students", "students"
  add_foreign_key "std_principals", "principals"
  add_foreign_key "std_principals", "students"
  add_foreign_key "std_subjects", "standards"
  add_foreign_key "std_subjects", "subjects"
  add_foreign_key "students", "addresses"
  add_foreign_key "students", "names"
  add_foreign_key "students", "standards"
end
