KamasSnow::Application.routes.draw do

  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  get 'open' => 'opens#open'
  get 'close' => 'closes#close'
  get 'shift' => 'closes#close'
  get 'inventory' => 'inventories#inventory'
  get 'cups' => 'cups#cups'

  resources :checklist_configs
  resources :opens
  resources :closes
  resources :shifts
  resources :inventories
  resources :cups

end
