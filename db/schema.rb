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

ActiveRecord::Schema[7.0].define(version: 6) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "challenges", force: :cascade do |t|
    t.string "name"
    t.bigint "community_id", null: false
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_challenges_on_community_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "meme_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["meme_id"], name: "index_comments_on_meme_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "memberships", force: :cascade do |t|
    t.bigint "community_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_memberships_on_community_id"
    t.index ["user_id"], name: "index_memberships_on_user_id"
  end

  create_table "memes", force: :cascade do |t|
    t.string "title"
    t.integer "score", default: 0
    t.bigint "user_id", null: false
    t.bigint "challenge_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["challenge_id"], name: "index_memes_on_challenge_id"
    t.index ["user_id"], name: "index_memes_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.text "bio"
    t.string "username"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "challenges", "communities"
  add_foreign_key "comments", "memes"
  add_foreign_key "comments", "users"
  add_foreign_key "memberships", "communities"
  add_foreign_key "memberships", "users"
  add_foreign_key "memes", "challenges"
  add_foreign_key "memes", "users"
end
