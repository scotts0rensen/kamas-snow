class ReorderCloses < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "remove_ice").first
    config.update_attributes order: 5

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "wipe_shaver").first
    config.update_attributes order: 6

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "wash_dishes").first
    config.update_attributes order: 7

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "spouts_soak").first
    config.update_attributes order: 8

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "syrup_bottles").first
    config.update_attributes order: 9
  end
end
