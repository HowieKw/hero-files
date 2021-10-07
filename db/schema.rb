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

ActiveRecord::Schema.define(version: 2021_10_04_064628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appearances", force: :cascade do |t|
    t.string "gender"
    t.string "species"
    t.string "height"
    t.string "weight"
    t.string "eye_color"
    t.string "hair_color"
    t.string "img_url"
    t.string "ani"
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_appearances_on_superhero_id"
  end

  create_table "backgrounds", force: :cascade do |t|
    t.text "aliases"
    t.string "place_of_birth"
    t.text "affiliations"
    t.text "former"
    t.text "relatives"
    t.text "history"
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_backgrounds_on_superhero_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.bigint "user_id", null: false
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_comments_on_superhero_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorite_heros", force: :cascade do |t|
    t.boolean "favorite"
    t.bigint "user_id", null: false
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_favorite_heros_on_superhero_id"
    t.index ["user_id"], name: "index_favorite_heros_on_user_id"
  end

  create_table "likes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_likes_on_superhero_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "powerstats", force: :cascade do |t|
    t.integer "intelligence"
    t.integer "strength"
    t.integer "speed"
    t.integer "durability"
    t.integer "energy_projection"
    t.integer "combat"
    t.bigint "superhero_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["superhero_id"], name: "index_powerstats_on_superhero_id"
  end

  create_table "superheros", force: :cascade do |t|
    t.string "alias"
    t.string "name"
    t.string "creator"
    t.string "universe"
    t.text "powers"
    t.integer "like_count", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appearances", "superheros"
  add_foreign_key "backgrounds", "superheros"
  add_foreign_key "comments", "superheros"
  add_foreign_key "comments", "users"
  add_foreign_key "favorite_heros", "superheros"
  add_foreign_key "favorite_heros", "users"
  add_foreign_key "likes", "superheros"
  add_foreign_key "likes", "users"
  add_foreign_key "powerstats", "superheros"
end
