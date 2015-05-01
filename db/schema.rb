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

ActiveRecord::Schema.define(version: 20150430164439) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checklist_configs", force: true do |t|
    t.string   "checklist_type"
    t.string   "section"
    t.string   "name"
    t.string   "label"
    t.string   "data_type"
    t.string   "data"
    t.integer  "order"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "close_details", force: true do |t|
    t.integer  "close_id"
    t.integer  "checklist_config_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "closes", force: true do |t|
    t.date     "date"
    t.string   "speaker_down"
    t.string   "close_awnings"
    t.string   "outside_trash"
    t.string   "close_umbrellas"
    t.string   "gray_water"
    t.string   "quarters"
    t.string   "ones"
    t.string   "fives"
    t.string   "tens"
    t.string   "twenties"
    t.string   "total"
    t.string   "envelope"
    t.string   "hide_cash_box"
    t.string   "sugar_water"
    t.string   "counters"
    t.string   "syrup_bottles"
    t.string   "remove_ice"
    t.string   "wipe_shaver"
    t.string   "wash_dishes"
    t.string   "street"
    t.string   "empty_sani"
    t.string   "dirty_rags"
    t.string   "trash_cans"
    t.string   "floor"
    t.string   "pump_off"
    t.string   "garbage_can_in"
    t.string   "water_off"
    t.string   "lock_freezer"
    t.string   "lock_awnings"
    t.string   "clock_out"
    t.string   "hide_ipad"
    t.string   "lock_trailer"
    t.string   "throw_trash"
    t.string   "deliver_stuff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cups", force: true do |t|
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inventories", force: true do |t|
    t.date     "date"
    t.integer  "ice_cream"
    t.integer  "sugar"
    t.string   "dish_soap"
    t.string   "hand_soap"
    t.string   "bleach"
    t.string   "pine_sol"
    t.integer  "snowball_shed"
    t.integer  "snowball_sleeves"
    t.integer  "snowball_loose"
    t.integer  "snowball_total"
    t.integer  "mountain_shed"
    t.integer  "mountain_sleeves"
    t.integer  "mountain_loose"
    t.integer  "mountain_total"
    t.integer  "glacier_shed"
    t.integer  "glacier_sleeves"
    t.integer  "glacier_loose"
    t.integer  "glacier_total"
    t.integer  "avalanche_shed"
    t.integer  "avalanche_sleeves"
    t.integer  "avalanche_loose"
    t.integer  "avalanche_total"
    t.string   "bahama_mama"
    t.string   "banana"
    t.string   "blueberry"
    t.string   "blue_raspberry"
    t.string   "bubble_gum"
    t.string   "byu"
    t.string   "cherry"
    t.string   "coconut"
    t.string   "cotton_candy"
    t.string   "grape"
    t.string   "georgia_peach"
    t.string   "green_apple"
    t.string   "lime"
    t.string   "mango"
    t.string   "orange"
    t.string   "pina_colada"
    t.string   "pineapple"
    t.string   "pink_lemonade"
    t.string   "rootbeer"
    t.string   "silver_fox"
    t.string   "strawberry"
    t.string   "tigers_blood"
    t.string   "utes"
    t.string   "watermelon"
    t.string   "wedding_cake"
    t.string   "wildcat"
    t.string   "dreamcicle"
    t.string   "sodium_benzoate"
    t.string   "citric_acid"
    t.string   "sour_snow"
    t.integer  "spoons_full"
    t.string   "spoons_partial"
    t.integer  "straws"
    t.integer  "napkins"
    t.integer  "paper_towells"
    t.integer  "gloves"
    t.string   "large_garbage_bags"
    t.string   "small_garbage_bags"
    t.string   "order_pads"
    t.integer  "hc"
    t.integer  "scm"
    t.integer  "em"
    t.string   "chocolate"
    t.string   "pop_rocks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "open_details", force: true do |t|
    t.integer  "open_id"
    t.integer  "checklist_config_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "opens", force: true do |t|
    t.date     "date"
    t.string   "clock_in"
    t.string   "ice_out"
    t.string   "connect_water"
    t.string   "quarters"
    t.string   "ones"
    t.string   "fives"
    t.string   "tens"
    t.string   "twenties"
    t.string   "total"
    t.string   "pump_on"
    t.string   "make_sani"
    t.string   "rags_out"
    t.string   "fill_paper"
    t.string   "wash_nightcaps"
    t.string   "fill_flavors"
    t.string   "fill_scm"
    t.string   "sugar_water"
    t.string   "dishes_away"
    t.string   "counters"
    t.string   "inventory"
    t.string   "outside_trash"
    t.string   "open_umbrellas"
    t.string   "tables"
    t.string   "trailer_sides"
    t.string   "gray_water"
    t.string   "trash_can"
    t.string   "open_awnings"
    t.string   "speaker_up"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "shifts", force: true do |t|
    t.date     "date"
    t.string   "gray_water"
    t.string   "trailer_sides"
    t.string   "counters"
    t.string   "street"
    t.string   "syrup_bottles"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
