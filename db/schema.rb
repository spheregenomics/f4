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

ActiveRecord::Schema.define(:version => 20121103164629) do

  create_table "badges", :force => true do |t|
    t.string   "badge_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "course_session_enrollments", :force => true do |t|
    t.integer  "course_session_id"
    t.integer  "user_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "course_session_enrollments", ["course_session_id"], :name => "index_course_session_enrollments_on_course_session_id"
  add_index "course_session_enrollments", ["user_id"], :name => "index_course_session_enrollments_on_user_id"

  create_table "course_sessions", :force => true do |t|
    t.string   "course_status"
    t.string   "session_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "max_students"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "course_id"
  end

  create_table "courses", :force => true do |t|
    t.string   "course_name"
    t.string   "course_type"
    t.string   "synopsis"
    t.string   "course_language"
    t.string   "status"
    t.string   "target_level"
    t.string   "owner"
    t.text     "description"
    t.integer  "version"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "layout_fields", :force => true do |t|
    t.string   "field_name"
    t.string   "field_value"
    t.string   "version"
    t.integer  "lesson_layout_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "layout_tables", :force => true do |t|
    t.integer  "table_number"
    t.integer  "row_num"
    t.string   "col1"
    t.string   "col2"
    t.string   "col3"
    t.string   "col4"
    t.integer  "version"
    t.integer  "lesson_layout_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "lesson_layouts", :force => true do |t|
    t.string   "lesson_name"
    t.string   "lesson_type"
    t.integer  "seq"
    t.string   "synopsis"
    t.string   "status"
    t.text     "description"
    t.integer  "version"
    t.integer  "unit_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "device_type"
    t.integer  "layout_type"
    t.integer  "lesson_id"
  end

  create_table "lessons", :force => true do |t|
    t.string   "lesson_name"
    t.string   "lesson_type"
    t.integer  "seq"
    t.string   "synopsis"
    t.string   "status"
    t.text     "description"
    t.integer  "version"
    t.integer  "unit_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "lookups", :force => true do |t|
    t.string   "field_name"
    t.string   "lookup_text"
    t.string   "model_name"
    t.string   "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "media", :force => true do |t|
    t.string   "media_filename"
    t.integer  "file_bitmap"
    t.string   "media_name"
    t.text     "description"
    t.integer  "media_category_id"
    t.integer  "seq"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "media_catagory_id"
  end

  create_table "media_catagories", :force => true do |t|
    t.integer  "seq"
    t.string   "media_cat"
    t.text     "description"
    t.integer  "version"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "media_catagories", ["course_id"], :name => "index_media_catagories_on_course_id"

  create_table "media_sentence_xrefs", :force => true do |t|
    t.integer  "media_id"
    t.integer  "sentence_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "media_sentence_xrefs", ["media_id"], :name => "index_media_sentence_xrefs_on_media_id"
  add_index "media_sentence_xrefs", ["sentence_id"], :name => "index_media_sentence_xrefs_on_sentence_id"

  create_table "sentence_tag_xrefs", :force => true do |t|
    t.integer  "sentence_id"
    t.integer  "tag_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sentence_tag_xrefs", ["sentence_id"], :name => "index_sentence_tag_xrefs_on_sentence_id"
  add_index "sentence_tag_xrefs", ["tag_id"], :name => "index_sentence_tag_xrefs_on_tag_id"

  create_table "sentence_tags", :force => true do |t|
    t.integer  "sentence_id"
    t.string   "tag"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sentence_tags", ["sentence_id"], :name => "index_sentence_tags_on_sentence_id"

  create_table "sentence_word_xrefs", :force => true do |t|
    t.integer  "sentence_id"
    t.integer  "word_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "sentence_word_xrefs", ["sentence_id"], :name => "index_sentence_word_xrefs_on_sentence_id"
  add_index "sentence_word_xrefs", ["word_id"], :name => "index_sentence_word_xrefs_on_word_id"

  create_table "sentence_xrefs", :force => true do |t|
    t.integer  "sentence_from"
    t.integer  "sentence_to"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "sentences", :force => true do |t|
    t.string   "language"
    t.string   "sentence"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "tags", :force => true do |t|
    t.string   "tag"
    t.string   "tag_type"
    t.integer  "tag_system_bitmap"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "units", :force => true do |t|
    t.string   "unit_name"
    t.string   "unit_type"
    t.integer  "seq"
    t.string   "synopsis"
    t.string   "status"
    t.text     "description"
    t.integer  "version"
    t.integer  "course_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "user_badge_xrefs", :force => true do |t|
    t.integer  "user_id"
    t.integer  "badge_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "user_badge_xrefs", ["badge_id"], :name => "index_user_badge_xrefs_on_badge_id"
  add_index "user_badge_xrefs", ["user_id"], :name => "index_user_badge_xrefs_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "diaspora_login"
    t.string   "shapado_login"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "words", :force => true do |t|
    t.string   "word_fluent"
    t.string   "fluent_language"
    t.string   "word_foreign"
    t.string   "foreign_language"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
