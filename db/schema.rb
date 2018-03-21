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

ActiveRecord::Schema.define(version: 20180320224451) do

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attributes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coins", force: :cascade do |t|
    t.string "name"
    t.text "official_name"
    t.text "description"
    t.integer "series_number"
    t.decimal "size"
    t.decimal "thickness"
    t.boolean "never_icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mint_id"
    t.integer "icon_id"
    t.integer "unitsize_id"
    t.integer "unitthickness_id"
    t.integer "artist_id"
    t.integer "user_id"
    t.index ["artist_id"], name: "index_coins_on_artist_id"
    t.index ["icon_id"], name: "index_coins_on_icon_id"
    t.index ["mint_id"], name: "index_coins_on_mint_id"
    t.index ["unitsize_id"], name: "index_coins_on_unitsize_id"
    t.index ["unitthickness_id"], name: "index_coins_on_unitthickness_id"
    t.index ["user_id"], name: "index_coins_on_user_id"
  end

  create_table "editions", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "coin_id"
    t.integer "minted"
    t.datetime "mintdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mint_id"
    t.integer "icon_id"
    t.integer "material_id"
    t.integer "finish_id"
    t.integer "user_id"
    t.index ["coin_id"], name: "index_editions_on_coin_id"
    t.index ["finish_id"], name: "index_editions_on_finish_id"
    t.index ["icon_id"], name: "index_editions_on_icon_id"
    t.index ["material_id"], name: "index_editions_on_material_id"
    t.index ["mint_id"], name: "index_editions_on_mint_id"
    t.index ["user_id"], name: "index_editions_on_user_id"
  end

  create_table "enamels", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "finishes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "graphics", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "format"
    t.decimal "width"
    t.decimal "height"
    t.boolean "is_icon", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mints", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "prefix"
    t.text "activation_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "my_coins", force: :cascade do |t|
    t.integer "edition_id"
    t.boolean "activated"
    t.string "reference_code"
    t.string "public_name"
    t.integer "rating"
    t.boolean "keeper"
    t.boolean "personal"
    t.text "notes"
    t.text "mission"
    t.string "track_code"
    t.string "activate_code"
    t.decimal "original_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edition_id"], name: "index_my_coins_on_edition_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.integer "order_id"
    t.integer "my_coin_id"
    t.decimal "cost"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["my_coin_id"], name: "index_order_items_on_my_coin_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "order_date"
    t.integer "vendor_id"
    t.decimal "shipping_cost"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vendor_id"], name: "index_orders_on_vendor_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vendors", force: :cascade do |t|
    t.string "name"
    t.text "url"
    t.integer "mint_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mint_id"], name: "index_vendors_on_mint_id"
  end

end
