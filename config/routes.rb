Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index'
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  get "tasks/:id/edit", to: "tasks#edit"

  get "tasks/:id", to: "tasks#show", as: :task

  patch "tasks/:id", to: "tasks#update"
  delete "tasks/:id", to: "tasks#destroy"

end

# irst, add a new route to list the tasks, following the convention
# from the lecture. Then, add a controller action and its view.
# This action should fetch all tasks, and a view should loop
#  these to display them, like in the screenshot below.
