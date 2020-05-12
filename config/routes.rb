Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "tasks", to: "tasks#index"
  post "tasks", to: "tasks#create", as: :tasks_create
  get "tasks/new", to: "tasks#new"
  get "tasks/:id", to: "tasks#show", as: :task
  get "tasks/:id/edit", to:"tasks#edit", as: :tasks_edit
  patch "tasks/:id", to:"tasks#update", as: :tasks_update
  delete "tasks/:id", to:"tasks#destroy", as: :tasks_delete
end
