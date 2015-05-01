json.array!(@checklist_configs) do |checklist_config|
  json.extract! checklist_config, :id
  json.url checklist_config_url(checklist_config, format: :json)
end
