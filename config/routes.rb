Rails.application.routes.draw do
  #get 'tasks/index'
  #get 'tasks/show'
  #get 'tasks/new'
  #get 'tasks/edit'
  resources :tasks
  root 'tasks#index'
  get "tasks/:id" => "tasks#show"
  post "tasks/:id/update" => "tasks#update"
  post "tasks/:id/destroy" => "tasks#destroy"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
