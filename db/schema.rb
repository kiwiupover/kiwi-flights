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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131015162620) do

  create_table "bookings", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "pick_up_location"
    t.string   "drop_off_location"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "itineraries", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "img_url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.string   "name"
    t.string   "details"
    t.string   "img_url"
    t.integer  "itinerary_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "locations", ["itinerary_id"], :name => "index_locations_on_itinerary_id"

  create_table "search_results", :force => true do |t|
    t.string   "price"
    t.string   "title"
    t.string   "brand"
    t.string   "description"
    t.string   "details"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "vans", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.text     "details"
    t.string   "image_url"
    t.string   "brand"
    t.integer  "beds"
    t.string   "rating"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "image_large"
    t.boolean  "fridge"
    t.boolean  "freezer"
    t.boolean  "stove"
    t.boolean  "dvd_player"
    t.boolean  "microwave"
    t.boolean  "shower"
    t.boolean  "toilet"
  end

end
