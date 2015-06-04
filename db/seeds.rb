# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def checklist(checklist, section, name, label, type, order, data=nil)
  ChecklistConfig.create_with(section: section, label: label, data_type: type, data: data, order: order).find_or_create_by(checklist_type: checklist, name: name)
end

type = "open"

section = "init"
checklist type, section, "clock_in", "Clock in", "required", 1
checklist type, section, "ice_out", "Get out ice to temper", "required", 2
checklist type, section, "connect_water", "Connect water line", "required", 3

section = "money"
checklist type, section, "quarters", "Quarters -- 20", "required", 1, ".25"
checklist type, section, "ones", "Ones -- 25", "required", 2, "1"
checklist type, section, "fives", "Fives -- 14", "required", 3, "5"
checklist type, section, "tens", "Tens", "required", 4, "10"
checklist type, section, "twenties", "Twenties", "required", 5, "20"
checklist type, section, "total", "Total -- $100.00", "required", 6

section = "inside"
checklist type, section, "pump_on", "Turn on water pump", "required", 1
checklist type, section, "make_sani", "Make new sanitized water", "required", 2
checklist type, section, "rags_out", "Get 4 fresh rags (1 wet, 1 dry, per side)", "required", 3
checklist type, section, "fill_paper", "Fill napkins, straws, and spoons", "optional", 4
checklist type, section, "wash_nightcaps", "Remove nightcaps and wash", "optional", 5
checklist type, section, "spouts_rinse", "Rinse pour spouts and put on bottles facing left", "optional", 6
checklist type, section, "fill_flavors", "Fill flavors", "optional", 7
checklist type, section, "fill_scm", "Fill SCM and HC", "optional", 8
checklist type, section, "sugar_water", "Make sugar water", "optional", 9
checklist type, section, "dishes_away", "Put clean dishes away", "optional", 10
checklist type, section, "counters", "Wipe down walls, countertops, shelves, door, curtains, fridge, freezer", "optional", 11
checklist type, section, "inventory", "Inventory", "required", 12

section = "outside"
checklist type, section, "outside_trash", "Pick up garbage outside", "optional", 1
checklist type, section, "open_umbrellas", "Open umbrellas (unless too windy)", "optional", 2
checklist type, section, "tables", "Clean tables and benches", "optional", 3
checklist type, section, "trailer_sides", "Wipe down sides of trailer", "optional", 4
checklist type, section, "gray_water", "Empty gray water", "optional", 5
checklist type, section, "trash_can", "Put out large trash can with new bag", "required", 6
checklist type, section, "open_awnings", "Open awnings", "required", 7
checklist type, section, "speaker_up", "Put speaker on top of awning", "required", 8



type = "close"

section = "outside"
checklist type, section, "speaker_down", "Put speaker on charger base", "required", 1
checklist type, section, "close_awnings", "Close awnings", "required", 2
checklist type, section, "outside_trash", "Pick up garbage outside", "optional", 3
checklist type, section, "close_umbrellas", "Close umbrellas", "optional", 4

section = "money"
checklist type, section, "quarters", "Quarters -- 20", "required", 1, ".25"
checklist type, section, "ones", "Ones -- 25", "required", 2, "1"
checklist type, section, "fives", "Fives -- 14", "required", 3, "5"
checklist type, section, "tens", "Tens", "required", 4, "10"
checklist type, section, "twenties", "Twenties", "required", 5, "20"
checklist type, section, "total", "Total -- $100.00", "required", 6

section = "inside"
checklist type, section, "envelope", "Put remaining money, punch cards, refund requests, and receipts in blue zipper bag", "required", 1
checklist type, section, "hide_cash_box", "Lock cash box and put behind garbage can", "required", 2
checklist type, section, "sugar_water", "Make sugar water", "optional", 3
checklist type, section, "counters", "Wipe down walls, countertops, shelves, door, curtains, fridge, freezer", "optional", 4
checklist type, section, "syrup_bottles", "Wipe off syrup bottles and put on night caps", "required", 5
checklist type, section, "remove_ice", "Remove ice and put in freezer or bucket", "required", 6
checklist type, section, "wipe_shaver", "Clean shaver with sani-water and wipe dry", "required", 7
checklist type, section, "wash_dishes", "Wash dishes and leave to air dry", "required", 8
checklist type, section, "spouts_soak", "Soak pour spouts in hot soapy water", "optional", 9
checklist type, section, "street", "Dump excess snow bucket and brush street", "optional", 10
checklist type, section, "empty_sani", "Empty sanitized water", "required", 11
checklist type, section, "dirty_rags", "Put dirty rags in green basket", "required", 12
checklist type, section, "trash_cans", "Empty both trash cans", "required", 13
checklist type, section, "floor", "Mop floor", "required", 14
checklist type, section, "pump_off", "Turn off water pump", "required", 15

section = "finish"
checklist type, section, "garbage_can_in", "Put garbage can inside", "required", 2
checklist type, section, "gray_water", "Empty gray water", "optional", 3
checklist type, section, "water_off", "Disconnect water and lock rear door", "required", 4
checklist type, section, "lock_freezer", "Lock ice freezer and shed", "required", 5
checklist type, section, "lock_awnings", "Lock awnings and window", "required", 6
checklist type, section, "clock_out", "Clock out", "required", 7
checklist type, section, "hide_ipad", "Hide ipad", "required", 8
checklist type, section, "lock_trailer", "Lock trailer", "required", 9
checklist type, section, "throw_trash", "Throw trash away behind Food Town", "required", 10
checklist type, section, "deliver_stuff", "Deliver empty sugar bucket, blue money zipper bag, keys, and full green rag basket to Sorensens", "required", 11



type = "shift"

section = "inside"
checklist type, section, "fill_paper", "Fill napkins, straws, and spoons", "optional", 1
checklist type, section, "fill_flavors", "Fill flavors", "optional", 2
checklist type, section, "fill_scm", "Fill SCM and HC", "optional", 3
checklist type, section, "counters", "Wipe down walls, countertops, shelves, door, curtains, fridge, freezer", "optional", 4
checklist type, section, "syrup_bottles", "Wipe off syrup bottles", "optional", 5

section = "outside"
checklist type, section, "street", "Dump excess snow bucket and brush street", "optional", 1
checklist type, section, "outside_trash", "Pick up garbage outside", "optional", 2
checklist type, section, "tables", "Clean tables and benches", "optional", 3
checklist type, section, "trailer_sides", "Wipe down sides of trailer", "optional", 4
checklist type, section, "gray_water", "Empty gray water", "optional", 5


type = "inventory"

section = "reds"
checklist type, section, "bahama_mama", "Bahama Mama", "", 1
checklist type, section, "cherry", "Cherry", "", 2
checklist type, section, "cotton_candy", "Cotton Candy", "", 3
checklist type, section, "georgia_peach", "Georgia Peach", "", 4
checklist type, section, "strawberry", "Strawberry", "", 5
checklist type, section, "tigers_blood", "Tigers Blood", "", 6
checklist type, section, "utes", "Utes", "", 7
checklist type, section, "watermelon", "Watermelon", "", 8

section = "pinks_oranges"
checklist type, section, "bubble_gum", "Bubble Gum", "", 1
checklist type, section, "dreamcicle", "Dreamcicle", "", 2
checklist type, section, "orange", "Orange", "", 3
checklist type, section, "pink_lemonade", "Pink Lemonade", "", 4

section = "yellows"
checklist type, section, "banana", "Banana", "", 1
checklist type, section, "mango", "Mango", "", 2
checklist type, section, "pineapple", "Pineapple", "", 3

section = "greens_browns"
checklist type, section, "green_apple", "Granny Smith Apple", "", 1
checklist type, section, "lime", "Lemon Lime", "", 2
checklist type, section, "rootbeer", "Root Beer", "", 3
checklist type, section, "wildcat", "Wildcat", "", 4

section = "blues_purples"
checklist type, section, "grape", "Grape", "", 1
checklist type, section, "blueberry", "Blueberry", "", 2
checklist type, section, "blue_raspberry", "Blue Raspberry", "", 3
checklist type, section, "byu", "BYU", "", 4

section = "whites"
checklist type, section, "coconut", "Coconut", "", 1
checklist type, section, "pina_colada", "Pina Colada", "", 2
checklist type, section, "silver_fox", "Silver Fox", "", 3
checklist type, section, "wedding_cake", "Wedding Cake", "", 4

section = "other"
checklist type, section, "sodium_benzoate", "Sodium Benzoate", "", 1
checklist type, section, "citric_acid", "Citric Acid", "", 2
checklist type, section, "sour_snow", "Sour Snow", "", 3
