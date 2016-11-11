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

ActiveRecord::Schema.define(version: 20161105214834) do

  create_table "Authors", primary_key: "Author_ID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "L_Name",    limit: 30
    t.string "F_Name",    limit: 15
    t.string "M_Initial", limit: 1
    t.string "Full_Name", limit: 30
  end

  create_table "Genre", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "Genre", limit: 30
  end

  create_table "Pub_Authenticate", primary_key: "User_Name", id: :string, limit: 30, default: "", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "Password", limit: 50
  end

  create_table "Publication_Types", id: false, force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "Pub_Type", limit: 30
  end

  create_table "Publications", primary_key: "Pub_ID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string  "Pub_Date",       limit: 10
    t.string  "Pub_Title",      limit: 120
    t.binary  "Summary",        limit: 65535
    t.string  "VOL",            limit: 5
    t.integer "No",                           default: "", null:false                          
    t.string  "Web_Address",    limit: 30
    t.string  "Author_Name",    limit: 30
    t.string  "Genre",          limit: 30
    t.string  "Publisher_Name", limit: 35
    t.string  "Pub_TypeR",      limit: 30
    t.string  "Web_AddressR",   limit: 120,   default: "", null: false
    t.string  "Entered_By",     limit: 25,    default: "", null: false
  end

  create_table "Publishers", primary_key: "Publisher_ID", force: :cascade, options: "ENGINE=MyISAM DEFAULT CHARSET=latin1" do |t|
    t.string "Publisher_Name",   limit: 30
    t.string "Street",           limit: 30
    t.string "City",             limit: 30
    t.string "State",            limit: 2
    t.string "Zip",              limit: 10
    t.string "Phone",            limit: 12
    t.string "Publisher_NameID", limit: 35
  end

  create_table "database_structures", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
  end

end
