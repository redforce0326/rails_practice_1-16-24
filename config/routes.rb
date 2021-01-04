Rails.application.routes.draw do
  get 'posts' => "posts#index"
  
  get "posts/new" => "posts#new"
  
  post "posts/create" => "posts#create"
  
  get "posts/:id" => "posts#show"
  
  get "posts/:id/edit" => "posts#edit"
  
  patch "posts/:id/update" => "posts#update"
  
  
  post "posts/:id/destroy" => "posts#destroy"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
