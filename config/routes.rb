KamasSnow::Application.routes.draw do
  root 'welcome#index'

  get 'application' => 'welcome#apply'
  post 'submit' => 'welcome#submit'
  get 'confirm' => 'welcome#confirm'

  get 'open' => 'openclose#open'
  get 'close' => 'openclose#close'
end
