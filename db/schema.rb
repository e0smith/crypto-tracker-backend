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

ActiveRecord::Schema.define(version: 2021_06_22_164622) do

  create_table "cryptos", force: :cascade do |t|
    t.string "name"
    t.string "symbol"
    t.string "image"
    t.decimal "current_price"
    t.decimal "market_cap"
    t.decimal "total_volume"
    t.decimal "high_24h"
    t.decimal "low_24h"
    t.decimal "price_change_24h"
    t.decimal "price_change_percentage_24h"
    t.decimal "price_change_percentage_7d"
    t.decimal "price_change_percentage_14d"
    t.decimal "price_change_percentage_30d"
    t.decimal "price_change_percentage_60d"
    t.decimal "price_change_percentage_1y"
    t.decimal "market_cap_change_24h"
    t.decimal "market_cap_change_percentage_24h"
    t.integer "total_supply"
    t.decimal "circulating_supply"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "name"
    t.integer "quantity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
