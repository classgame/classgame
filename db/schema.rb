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

ActiveRecord::Schema.define(version: 20161014140453) do

  create_table "addresses", force: :cascade do |t|
    t.string   "address",      limit: 255
    t.integer  "number",       limit: 4
    t.string   "complement",   limit: 255
    t.string   "neighborhood", limit: 255
    t.string   "zip_code",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "alternatives", force: :cascade do |t|
    t.string   "description", limit: 255
    t.boolean  "correct"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "question_id", limit: 4
  end

  add_index "alternatives", ["question_id"], name: "index_alternatives_on_question_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "image",       limit: 255
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "experience",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "contents", force: :cascade do |t|
    t.integer "chapter_id", limit: 4
  end

  add_index "contents", ["chapter_id"], name: "index_contents_on_chapter_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "image",             limit: 255
    t.string   "trailer",           limit: 255
    t.string   "title",             limit: 255
    t.string   "description",       limit: 255
    t.string   "nivel",             limit: 255
    t.integer  "workload",          limit: 4
    t.boolean  "active"
    t.boolean  "completed_edition"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "category_id",       limit: 4
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id", using: :btree

  create_table "exercises", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "nivel",      limit: 255
    t.string   "experience", limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "content_id", limit: 4
  end

  add_index "exercises", ["content_id"], name: "index_exercises_on_content_id", using: :btree

  create_table "performaces", force: :cascade do |t|
    t.integer  "nivel",            limit: 4
    t.integer  "total_experience", limit: 4
    t.integer  "amount_exercises", limit: 4
    t.integer  "amount_courses",   limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.string   "experience",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "exercise_id", limit: 4
  end

  add_index "questions", ["exercise_id"], name: "index_questions_on_exercise_id", using: :btree

  create_table "registries", force: :cascade do |t|
    t.boolean  "active"
    t.boolean  "finished_course"
    t.string   "limit_date",      limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "course_id",       limit: 4
    t.integer  "user_id",         limit: 4
  end

  add_index "registries", ["course_id"], name: "index_registries_on_course_id", using: :btree
  add_index "registries", ["user_id"], name: "index_registries_on_user_id", using: :btree

  create_table "texts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.string   "text",        limit: 255
    t.string   "description", limit: 255
    t.string   "experience",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "content_id",  limit: 4
  end

  add_index "texts", ["content_id"], name: "index_texts_on_content_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name",                   limit: 255, default: "", null: false
    t.string   "image",                  limit: 255, default: "", null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.integer  "address_id",             limit: 4
    t.integer  "performace_id",          limit: 4
  end

  add_index "users", ["address_id"], name: "index_users_on_address_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["performace_id"], name: "index_users_on_performace_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "videos", force: :cascade do |t|
    t.string   "link",        limit: 255
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "experience",  limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "content_id",  limit: 4
  end

  add_index "videos", ["content_id"], name: "index_videos_on_content_id", using: :btree

  add_foreign_key "courses", "categories"
  add_foreign_key "registries", "courses"
  add_foreign_key "registries", "users"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "performaces"
end
