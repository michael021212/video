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

ActiveRecord::Schema[7.1].define(version: 2024_06_01_013913) do
  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "keyword_mapping_csv_histories", force: :cascade do |t|
    t.integer "action_kind", null: false
    t.string "filename"
    t.integer "admin_id", null: false
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_keyword_mapping_csv_histories_on_created_at"
  end

  create_table "keyword_mappings", force: :cascade do |t|
    t.string "keyword", null: false
    t.string "theme", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["keyword"], name: "index_keyword_mappings_on_keyword"
  end

  create_table "machine_csv_histories", force: :cascade do |t|
    t.integer "action_kind", null: false
    t.string "filename"
    t.integer "admin_id", null: false
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_machine_csv_histories_on_created_at"
  end

  create_table "machine_toy_counts", force: :cascade do |t|
    t.integer "machine_id", null: false
    t.integer "quantity", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["machine_id"], name: "index_machine_toy_counts_on_machine_id", unique: true
  end

  create_table "machines", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "theme", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_machines_on_store_id"
  end

  create_table "store_csv_histories", force: :cascade do |t|
    t.integer "action_kind", null: false
    t.string "filename"
    t.integer "admin_id", null: false
    t.integer "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_store_csv_histories_on_created_at"
  end

  create_table "stores", force: :cascade do |t|
    t.string "name", null: false
    t.string "address", null: false
    t.float "lan", null: false
    t.float "lon", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
