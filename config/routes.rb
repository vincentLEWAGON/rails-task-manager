Rails.application.routes.draw do
  get 'up' => 'rails/health#show', as: :rails_health_check
  get 'tasks' => 'tasks#index', as: 'tasks'
  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update', as: 'update_task'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  delete 'tasks', to: 'tasks#delete', as: 'delete_task'
end
