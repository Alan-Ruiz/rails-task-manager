Rails.application.routes.draw do

  root to: 'tasks#list'

  get "tasks", to: "tasks#list"

  get 'tasks/new', to: 'tasks#new', as: 'new_task'

  post 'tasks', to: 'tasks#create'

  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

  get 'tasks/:id', to: 'tasks#show', as: "display_task"

  patch 'tasks/:id', to: 'tasks#update', as: :task

  delete 'tasks/:id', to: 'tasks#destroy', as: 'destroy_task'
end
