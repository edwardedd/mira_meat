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

ActiveRecord::Schema.define(version: 20180501134922) do

  create_table "aboutus", force: :cascade do |t|
    t.string "title"
    t.text   "description"
    t.string "main_image"
    t.string "video_link"
    t.string "second_title"
    t.text   "second_description"
    t.string "second_image"
    t.string "third_title"
    t.text   "third_description"
    t.text   "third_description_right"
    t.text   "frase"
    t.text   "history_text"
    t.string "video_cover"
    t.string "file"
  end

  create_table "articles", force: :cascade do |t|
    t.string  "title"
    t.date    "date"
    t.string  "second_title"
    t.string  "main_image"
    t.string  "second_image"
    t.text    "first_description"
    t.text    "second_description"
    t.text    "photo_description"
    t.boolean "show"
    t.string  "url_fragment"
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string   "data_file_name",               null: false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.string   "type",              limit: 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "ckeditor_assets", ["type"], name: "index_ckeditor_assets_on_type"

  create_table "consultations", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text   "comment"
  end

  create_table "contacts", force: :cascade do |t|
    t.string "first_number"
    t.string "second_number"
    t.string "third_number"
    t.string "first_email"
    t.string "second_email"
    t.string "image"
    t.string "first_adress"
    t.string "map_link"
    t.string "facebook"
    t.string "twitter"
    t.string "youtube"
  end

  create_table "footersliders", force: :cascade do |t|
    t.string  "image"
    t.boolean "show"
  end

  create_table "headersliders", force: :cascade do |t|
    t.string  "image"
    t.boolean "show"
  end

  create_table "histories", force: :cascade do |t|
    t.string  "title"
    t.string  "year"
    t.text    "description"
    t.string  "image"
    t.boolean "show"
  end

  create_table "mains", force: :cascade do |t|
    t.text   "main_description"
    t.text   "second_description"
    t.text   "third_description"
    t.text   "fourth_description"
    t.string "video_link"
    t.string "video_cover"
  end

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "category"
    t.string "amount"
    t.text   "comment"
  end

  create_table "policies", force: :cascade do |t|
    t.text "text"
  end

  create_table "productions", force: :cascade do |t|
    t.string "main_image"
    t.string "first_title"
    t.string "second_title"
    t.string "second_image"
    t.text   "description"
    t.string "review_title"
    t.text   "review_description"
  end

  create_table "products", force: :cascade do |t|
    t.string  "name"
    t.string  "part_of_meat"
    t.string  "article_num"
    t.string  "country"
    t.string  "company_name"
    t.string  "image"
    t.string  "category"
    t.string  "temperature"
    t.boolean "import"
    t.boolean "export"
    t.boolean "present"
    t.boolean "show"
    t.integer "price"
    t.string  "freeze_type"
    t.string  "product_description"
  end

  create_table "retails", force: :cascade do |t|
    t.string "main_image"
    t.string "first_title"
    t.string "second_title"
    t.string "third_title"
  end

  create_table "retailsliders", force: :cascade do |t|
    t.string  "image"
    t.string  "first_title"
    t.string  "second_title"
    t.boolean "show"
  end

  create_table "sertificates", force: :cascade do |t|
    t.string  "name"
    t.string  "image"
    t.boolean "show"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vacancies", force: :cascade do |t|
    t.string  "vacancy"
    t.integer "salary"
    t.boolean "show"
  end

  create_table "vacancyforms", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.string "file"
    t.string "vacancy_name"
    t.string "surname"
  end

  create_table "wholesales", force: :cascade do |t|
    t.string "main_image"
    t.string "first_title"
    t.string "second_title"
    t.string "second_image"
    t.string "third_title"
    t.string "fourth_title"
    t.string "fifth_title"
    t.string "sixth_title"
    t.string "review_title"
    t.text   "review_description"
  end

end
