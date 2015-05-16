class ChangeInventories < ActiveRecord::Migration
  def change
    rename_column :inventories, :straws, :straws_full
    add_column :inventories, :straws_partial, :string
    rename_column :inventories, :napkins, :napkins_full
    add_column :inventories, :napkins_partial, :string

    chocolate2nil
    change_column :inventories, :chocolate, 'integer USING CAST(chocolate AS integer)'
  end
end

def chocolate2nil
  Inventory.all.each { |i| i.update_attributes chocolate: nil }
end