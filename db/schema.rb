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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170527051801) do

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",          limit: 255
    t.string   "thumbnail_path", limit: 255
    t.string   "url",            limit: 255
    t.integer  "time",           limit: 4
    t.string   "site_url",       limit: 255
    t.integer  "count",          limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "implessions", force: :cascade do |t|
    t.string   "tracking_code", limit: 255
    t.integer  "movie_id",      limit: 4
    t.integer  "value",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "type",       limit: 4
    t.integer  "count",      limit: 4
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "movie_tags", force: :cascade do |t|
    t.integer  "movie_id",   limit: 4
    t.integer  "tag_id",     limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.integer  "keyword_id",  limit: 4
    t.string   "description", limit: 255
    t.string   "sentence",    limit: 255
    t.integer  "count",       limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider",    limit: 255
    t.string   "uid",         limit: 255
    t.string   "screen_name", limit: 255
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
