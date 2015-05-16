class HomeOnlyInventoryItems < ActiveRecord::Migration
  def change
    add_column :inventories, :aprons_home, :integer
    add_column :inventories, :uniform_shirts_home, :integer
    add_column :inventories, :baseball_caps_home, :integer
    add_column :inventories, :clip_boards_home, :integer
    add_column :inventories, :squeeze_bottles_home, :integer
    add_column :inventories, :sweet_thickener_home, :integer
    add_column :inventories, :bottle_caps_home, :integer
    add_column :inventories, :ten_gallon_spigot_home, :integer
  end
end
