Rails.application.routes.draw do
  root 'homes#index'
  get 'homes/index'
  get 'homes/create'
  get 'homes/delete/:id' => 'homes#delete'
  
  get 'homes/:post_id/comments' => 'comments#index', as: "post_comments"
  post 'homes/:post_id/comments' => 'comments#create'
  get 'homes/:post_id/comments/new' => 'comments#new', as: "new_post_comment"
  get 'homes/:post_id/comments/:id/edit' => 'comments#edit', as: "edit_post_comment"
  get 'homes/:post_id/comments/:id' => 'comments#show', as: "post_comment"
  patch 'homes/:post_id/comments/:id' => 'comments#update'
  put 'homes/:post_id/comments/:id' => 'comments#update'
  delete 'homes/:post_id/comments/:id' => 'comments#destroy'
  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
