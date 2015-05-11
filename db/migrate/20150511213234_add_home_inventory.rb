class AddHomeInventory < ActiveRecord::Migration
  def change
    add_column :inventories, :ice_cream_home, :integer
    add_column :inventories, :sugar_home, :integer
    add_column :inventories, :dish_soap_home, :integer
    add_column :inventories, :hand_soap_home, :integer
    add_column :inventories, :bleach_home, :integer
    add_column :inventories, :pine_sol_home, :integer

    add_column :inventories, :snowball_home, :integer
    add_column :inventories, :mountain_home, :integer
    add_column :inventories, :glacier_home, :integer
    add_column :inventories, :avalanche_home, :integer

    add_column :inventories, :bahama_mama_home, :integer
    add_column :inventories, :banana_home, :integer
    add_column :inventories, :blueberry_home, :integer
    add_column :inventories, :blue_raspberry_home, :integer
    add_column :inventories, :bubble_gum_home, :integer
    add_column :inventories, :byu_home, :integer
    add_column :inventories, :cherry_home, :integer
    add_column :inventories, :coconut_home, :integer
    add_column :inventories, :cotton_candy_home, :integer
    add_column :inventories, :grape_home, :integer
    add_column :inventories, :georgia_peach_home, :integer
    add_column :inventories, :green_apple_home, :integer
    add_column :inventories, :lime_home, :integer
    add_column :inventories, :mango_home, :integer
    add_column :inventories, :orange_home, :integer
    add_column :inventories, :pina_colada_home, :integer
    add_column :inventories, :pineapple_home, :integer
    add_column :inventories, :pink_lemonade_home, :integer
    add_column :inventories, :rootbeer_home, :integer
    add_column :inventories, :silver_fox_home, :integer
    add_column :inventories, :strawberry_home, :integer
    add_column :inventories, :tigers_blood_home, :integer
    add_column :inventories, :utes_home, :integer
    add_column :inventories, :watermelon_home, :integer
    add_column :inventories, :wedding_cake_home, :integer
    add_column :inventories, :wildcat_home, :integer
    add_column :inventories, :dreamcicle_home, :integer
    add_column :inventories, :sodium_benzoate_home, :integer
    add_column :inventories, :citric_acid_home, :integer
    add_column :inventories, :sour_snow_home, :integer

    add_column :inventories, :spoons_home, :integer
    add_column :inventories, :straws_home, :integer
    add_column :inventories, :napkins_home, :integer
    add_column :inventories, :paper_towells_home, :integer
    add_column :inventories, :gloves_home, :integer
    add_column :inventories, :large_garbage_bags_home, :integer
    add_column :inventories, :small_garbage_bags_home, :integer
    add_column :inventories, :order_pads_home, :integer
    add_column :inventories, :hc_home, :integer
    add_column :inventories, :scm_home, :integer
    add_column :inventories, :em_home, :integer
    add_column :inventories, :chocolate_home, :integer
    add_column :inventories, :pop_rocks_home, :integer
  end
end
