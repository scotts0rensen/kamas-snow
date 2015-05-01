KamasSnow::Application.routes.draw do

  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  get 'inventory' => 'openclose#inventory'

  get 'openclose' => 'opens#openclose'
  resources :opens
  resources :closes
  resources :checklist_configs

end
