KamasSnow::Application.routes.draw do

  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  # get 'inventory' => 'openclose#inventory'

  get 'cups' => 'cups#cups'
  get 'open' => 'opens#open'
  get 'close' => 'closes#close'
  get 'shift' => 'closes#close'
  get 'inventory' => 'inventories#inventory'

  resources :cups
  resources :opens
  resources :closes
  resources :shifts
  resources :inventories
  resources :checklist_configs

end
