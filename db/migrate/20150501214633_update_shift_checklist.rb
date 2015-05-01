class UpdateShiftChecklist < ActiveRecord::Migration
  def up
    drop_and_create_shifts
  end

  def down
    drop_and_create_shifts
  end

  def drop_and_create_shifts
    drop_table :shifts

    create_table :shifts do |t|
      t.date :date
      t.string :fill_paper
      t.string :fill_flavors
      t.string :fill_scm
      t.string :counters
      t.string :syrup_bottles
      t.string :street
      t.string :outside_trash
      t.string :tables
      t.string :trailer_sides
      t.string :gray_water
      t.timestamps
    end
  end
end
