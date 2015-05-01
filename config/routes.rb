KamasSnow::Application.routes.draw do

  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  get 'inventory' => 'openclose#inventory'

  get 'open' => 'opens#open'
  get 'close' => 'closes#close'
  get 'shift' => 'closes#close'

  resources :opens
  resources :closes
  resources :checklist_configs

end
