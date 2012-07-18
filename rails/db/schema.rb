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

ActiveRecord::Schema.define(:version => 20120718134208) do

  create_table "comments", :force => true do |t|
    t.integer  "spot_id"
    t.integer  "user_id"
    t.text     "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["spot_id"], :name => "index_comments_on_spot_id"
  add_index "comments", ["user_id"], :name => "index_comments_on_user_id"

  create_table "ratings", :force => true do |t|
    t.integer  "spot_id"
    t.integer  "user_id"
    t.integer  "ground",     :default => 0
    t.integer  "water",      :default => 0
    t.integer  "clean",      :default => 0
    t.integer  "play",       :default => 0
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "ratings", ["spot_id"], :name => "index_ratings_on_spot_id"
  add_index "ratings", ["user_id"], :name => "index_ratings_on_user_id"

  create_table "spot_images", :force => true do |t|
    t.integer  "spot_id"
    t.integer  "user_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "spot_images", ["spot_id"], :name => "index_spot_images_on_spot_id"

  create_table "spots", :force => true do |t|
    t.string   "title"
    t.text     "text"
    t.string   "street"
    t.integer  "zip"
    t.string   "city"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
