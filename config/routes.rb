KamasSnow::Application.routes.draw do

  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  get 'open' => 'opens#open'
  get 'close' => 'closes#close'
  get 'shift' => 'shifts#shift'
  get 'inventory' => 'inventories#inventory'
  post 'inventory_email' => 'inventories#email'
  get 'cups' => 'cups#cups'

  resources :checklist_configs
  resources :opens
  resources :closes
  resources :shifts
  resources :inventories
  resources :cups

end
