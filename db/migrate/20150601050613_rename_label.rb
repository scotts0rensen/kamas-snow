class RenameLabel < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "wash_dishes").first
    config.update_attributes label: "Wash dishes and leave to air dry.  Don't forget ice cream scoop"
  end
end
