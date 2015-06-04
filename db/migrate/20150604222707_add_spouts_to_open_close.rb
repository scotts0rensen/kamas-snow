class AddSpoutsToOpenClose < ActiveRecord::Migration
  def change
    add_column :opens, :spouts_rinse, :string
    add_column :closes, :spouts_soak, :string
  end
end
