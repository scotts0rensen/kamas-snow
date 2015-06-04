class FixOpenChecklistOrder < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "open", section: "inside", name: "counters").first
    config.update_attributes order: 11
  end
end
