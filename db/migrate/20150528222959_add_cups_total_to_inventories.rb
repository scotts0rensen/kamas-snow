class AddCupsTotalToInventories < ActiveRecord::Migration
  def change
    add_column :inventories, :flavors_total, :integer
  end
end
