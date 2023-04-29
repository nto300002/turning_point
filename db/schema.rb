# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_27_140623) do
  create_table "diaries", force: :cascade do |t|
    t.integer "user_id"
    t.integer "searchword_id"
    t.string "title", null: false
    t.text "detail"
    t.string "emotion"
    t.integer "evaluation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.integer "user_id"
    t.text "goal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question"
    t.string "column"
    t.integer "user_id", null: false
    t.integer "turningpoint_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turningpoint_id"], name: "index_questions_on_turningpoint_id"
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "searchwords", force: :cascade do |t|
    t.integer "user_id"
    t.string "word"
    t.integer "word_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "turningpoints", force: :cascade do |t|
    t.string "current_task"
    t.string "enthusiastic"
    t.string "favorite_word"
    t.string "unpleasant_thing"
    t.string "what_i_want_to_do_in_the_future"
    t.integer "user_id", null: false
    t.integer "searchword_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchword_id"], name: "index_turningpoints_on_searchword_id"
    t.index ["user_id"], name: "index_turningpoints_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin", default: false, null: false
  end

  add_foreign_key "questions", "turningpoints"
  add_foreign_key "questions", "users"
  add_foreign_key "turningpoints", "searchwords"
  add_foreign_key "turningpoints", "users"
end
