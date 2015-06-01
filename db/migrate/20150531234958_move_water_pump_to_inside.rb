class MoveWaterPumpToInside < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "close", section: "finish", name: "pump_off").first
    config.update_attributes section: "inside", order: 13

    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "floor").first
    config.update_attributes order: 14
  end
end
