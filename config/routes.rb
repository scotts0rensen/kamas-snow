KamasSnow::Application.routes.draw do
  root 'welcome#index'

  get 'application' => 'welcome#apply'
end
