class FixDescWashDishes < ActiveRecord::Migration
  def change
    config = ChecklistConfig.where(checklist_type: "close", section: "inside", name: "wash_dishes").first
    config.update_attributes label: "Wash dishes (Don't forget ice cream scoop!) and leave to air dry"
  end
end
