Rails.application.routes.draw do
  root to: 'tasks#index'

  # resources :restaurants
  # resources :restaurants, only: [:create, :index, :destory]
  # resources :restaurants, except: ['what you dont want']

  get 'tasks/new', to: 'tasks#new', as: 'new_task'
  post 'tasks', to: 'tasks#create'

  get 'tasks/:id', to: 'tasks#show', as: 'task'
  get 'tasks', to: 'tasks#index'

  # edit
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
  patch 'tasks/:id', to: 'tasks#update'

  delete 'tasks/:id', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
