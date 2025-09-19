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

ActiveRecord::Schema.define(version: 2025_09_19_183215) do

  create_table "Authors", primary_key: "Author_ID", charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "L_Name", limit: 30
    t.string "F_Name", limit: 15
    t.string "M_Initial", limit: 1
    t.string "Full_Name", limit: 30
  end

  create_table "Genre", id: false, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "Genre", limit: 30
  end

  create_table "Pub_Authenticate", primary_key: "User_Name", id: { type: :string, limit: 30, default: "" }, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "Password", limit: 50
  end

  create_table "Publication_Types", id: false, charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "Pub_Type", limit: 30
  end

  create_table "categories", charset: "utf8mb3", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "database_structures", charset: "utf8mb3", force: :cascade do |t|
  end

  create_table "p_types", charset: "utf8mb3", force: :cascade do |t|
    t.string "pub_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", primary_key: "Pub_ID", charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "pub_date", limit: 10
    t.string "Pub_Title", limit: 120
    t.binary "Summary"
    t.string "VOL", limit: 5
    t.integer "No"
    t.string "Web_Address", limit: 30
    t.string "Author_Name", limit: 30
    t.string "Genre", limit: 30
    t.string "Pub_TypeR", limit: 30
    t.string "Web_AddressR", limit: 120, default: "", null: false
    t.string "Entered_By", limit: 25, default: "", null: false
    t.integer "Author_ID"
    t.integer "Publisher_ID", null: false
    t.integer "category_id"
    t.integer "p_type_id"
    t.index ["Author_ID"], name: "idx_publications_author_id"
    t.index ["Publisher_ID"], name: "idx_publications_publisher_id"
    t.index ["category_id"], name: "idx_publications_category_id"
    t.index ["p_type_id"], name: "idx_publications_p_type_id"
  end

  create_table "publishers", primary_key: "Publisher_ID", charset: "latin1", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "Publisher_Name", null: false
    t.string "Street", limit: 30
    t.string "City", limit: 30
    t.string "State", limit: 2
    t.string "Zip", limit: 10
    t.string "Phone", limit: 12
    t.string "Publisher_NameID", limit: 35
  end

  create_table "users", charset: "utf8mb3", force: :cascade do |t|
    t.string "provider", default: "email", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "nickname"
    t.string "image"
    t.string "email"
    t.text "tokens"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

end
