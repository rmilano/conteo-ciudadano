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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120527151241) do

  create_table "boxes", :force => true do |t|
    t.integer  "state_id"
    t.integer  "municipality_id"
    t.integer  "number"
    t.integer  "district"
    t.integer  "secction"
    t.string   "location"
    t.integer  "pri"
    t.integer  "pan"
    t.integer  "prd"
    t.integer  "vem"
    t.integer  "pt"
    t.integer  "movimiento_ciudadano"
    t.integer  "nueva_alianza"
    t.integer  "nulo"
    t.integer  "otro"
    t.boolean  "active"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "ticket_voting_file_name"
    t.string   "ticket_voting_content_type"
    t.integer  "ticket_voting_file_size"
    t.datetime "ticket_voting_updated_at"
  end

  add_index "boxes", ["municipality_id"], :name => "index_boxes_on_municipality_id"
  add_index "boxes", ["state_id"], :name => "index_boxes_on_state_id"

  create_table "municipalities", :force => true do |t|
    t.integer  "number"
    t.integer  "state_id"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "municipalities", ["state_id"], :name => "index_municipalities_on_state_id"

  create_table "simple_captcha_data", :force => true do |t|
    t.string   "key",        :limit => 40
    t.string   "value",      :limit => 6
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "simple_captcha_data", ["key"], :name => "idx_key"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.string   "single_access_token"
    t.string   "perishable_token"
    t.string   "role"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

end
