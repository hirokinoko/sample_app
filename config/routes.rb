Rails.application.routes.draw do
  get 'todolists/new' 
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get "todolists" => "todolists#index"
  # .../todolists/1 や .../todolists/3 に該当する
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
  # For details on the DSL available withinget  this file, see http://guides.rubyonrails.org/routing.html
end
