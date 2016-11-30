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

ActiveRecord::Schema.define(version: 20161130145120) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace",     limit: 255
    t.text     "body",          limit: 65535
    t.string   "resource_id",   limit: 255,   null: false
    t.string   "resource_type", limit: 255,   null: false
    t.integer  "author_id",     limit: 4
    t.string   "author_type",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.string   "address",      limit: 255
    t.integer  "number",       limit: 4
    t.string   "complement",   limit: 255
    t.string   "neighborhood", limit: 255
    t.string   "zip_code",     limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "alternatives", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.boolean  "correct"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "question_id", limit: 4
  end

  add_index "alternatives", ["question_id"], name: "index_alternatives_on_question_id", using: :btree

  create_table "answers", force: :cascade do |t|
    t.boolean  "correct",                  default: false
    t.integer  "experience",     limit: 4, default: 0
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "question_id",    limit: 4
    t.integer  "history_id",     limit: 4
    t.integer  "alternative_id", limit: 4
  end

  add_index "answers", ["alternative_id"], name: "index_answers_on_alternative_id", using: :btree
  add_index "answers", ["history_id"], name: "index_answers_on_history_id", using: :btree
  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

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
    t.integer  "experience",  limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "course_id",   limit: 4
  end

  add_index "chapters", ["course_id"], name: "index_chapters_on_course_id", using: :btree

  create_table "contents", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "experience",  limit: 4
    t.integer  "position",    limit: 4
    t.string   "title",       limit: 255
    t.string   "nivel",       limit: 255
    t.string   "type",        limit: 255
    t.string   "link",        limit: 255
    t.text     "text",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "chapter_id",  limit: 4
  end

  add_index "contents", ["chapter_id"], name: "index_contents_on_chapter_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.string   "image",               limit: 255
    t.string   "image_cover",         limit: 255
    t.string   "trailer",             limit: 255
    t.string   "title",               limit: 255
    t.string   "description",         limit: 255
    t.string   "nivel",               limit: 255
    t.integer  "workload",            limit: 4
    t.boolean  "active"
    t.boolean  "completed_edition"
    t.integer  "progress_percentage", limit: 4,   default: 0
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "category_id",         limit: 4
  end

  add_index "courses", ["category_id"], name: "index_courses_on_category_id", using: :btree

  create_table "histories", force: :cascade do |t|
    t.boolean  "done",                 default: true
    t.integer  "experience", limit: 4, default: 0
    t.integer  "quantity",   limit: 4, default: 1
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "user_id",    limit: 4
    t.integer  "content_id", limit: 4
  end

  add_index "histories", ["content_id"], name: "index_histories_on_content_id", using: :btree
  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree

  create_table "performances", force: :cascade do |t|
    t.integer  "nivel",            limit: 4, default: 0
    t.integer  "total_experience", limit: 4, default: 0
    t.integer  "amount_exercises", limit: 4, default: 0
    t.integer  "amount_courses",   limit: 4, default: 0
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "description", limit: 255
    t.integer  "experience",  limit: 4
    t.string   "title",       limit: 255
    t.string   "nivel",       limit: 255
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
    t.integer  "performance_id",         limit: 4
  end

  add_index "users", ["address_id"], name: "index_users_on_address_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["performance_id"], name: "index_users_on_performance_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "courses", "categories"
  add_foreign_key "registries", "courses"
  add_foreign_key "registries", "users"
  add_foreign_key "users", "addresses"
  add_foreign_key "users", "performances"
end
