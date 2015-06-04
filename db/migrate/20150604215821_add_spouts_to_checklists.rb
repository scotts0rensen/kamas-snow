class AddSpoutsToChecklists < ActiveRecord::Migration
  def change
    configs = ChecklistConfig.where("checklist_type = 'open' and section = 'inside' and checklist_configs.order >= 6")
    configs.each do |config|
      config.update_attributes( order: config.order + 1 )
    end

    ChecklistConfig.create! checklist_type: "open", name: "spouts_rinse", section: "inside", label: "Rinse pour spouts and put on bottles facing left", data_type: "optional", order: 6

    configs = ChecklistConfig.where("checklist_type = 'close' and section = 'inside' and checklist_configs.order >= 9")
    configs.each do |config|
      config.update_attributes( order: config.order + 1 )
    end

    ChecklistConfig.create! checklist_type: "close", name: "spouts_soak", section: "inside", label: "Soak pour spouts in hot soapy water", data_type: "optional", order: 9
  end
end
