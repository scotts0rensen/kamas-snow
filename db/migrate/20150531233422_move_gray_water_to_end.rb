class MoveGrayWaterToEnd < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "pump_off").first
    config.update_attributes section: "finish", order: 1

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "garbage_can_in").first
    config.update_attributes section: "finish", order: 2

    config = ChecklistConfig.where(checklist_type: "close", section: "outside", name: "gray_water").first
    config.update_attributes section: "finish", order: 3

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "water_off").first
    config.update_attributes section: "finish", order: 4

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "lock_freezer").first
    config.update_attributes section: "finish", order: 5

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "lock_awnings").first
    config.update_attributes section: "finish", order: 6

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "clock_out").first
    config.update_attributes section: "finish", order: 7

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "hide_ipad").first
    config.update_attributes section: "finish", order: 8

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "lock_trailer").first
    config.update_attributes section: "finish", order: 9

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "throw_trash").first
    config.update_attributes section: "finish", order: 10

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "deliver_stuff").first
    config.update_attributes section: "finish", order: 11


  end
end
