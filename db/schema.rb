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

ActiveRecord::Schema[7.1].define(version: 2025_04_10_171333) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "equipment", force: :cascade do |t|
    t.string "storable_type", null: false
    t.integer "storable_id", null: false
    t.string "size", null: false
    t.string "color", null: false
    t.string "brand", null: false
    t.string "model", null: false
    t.string "article_number", null: false
    t.string "material", null: false
    t.integer "weight", null: false
    t.string "purpose", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_units", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "location", null: false
    t.string "rent_status", null: false
    t.string "condition", null: false
    t.bigint "equipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_id"], name: "index_equipment_units_on_equipment_id"
  end

  create_table "helmets", force: :cascade do |t|
    t.string "ventilation_type", null: false
    t.boolean "has_audio_support", null: false
    t.string "certifications", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skis", force: :cascade do |t|
    t.decimal "sidecut_radius", null: false
    t.integer "waist_width", null: false
    t.string "binding_type", null: false
    t.boolean "is_twin_tip", null: false
    t.string "core_type", null: false
    t.integer "recommended_min_weight", null: false
    t.integer "recommended_max_weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "snowboards", force: :cascade do |t|
    t.string "shape", null: false
    t.string "flex", null: false
    t.string "profile", null: false
    t.integer "recommended_min_weight", null: false
    t.integer "recommended_max_weight", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
