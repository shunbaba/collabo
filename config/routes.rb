Rails.application.routes.draw do
  get 'posts/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   get '/top' => 'homes#top'
   get '/index' => 'posts#index'
   get '/posts/:id' => 'posts#show', as: 'post'
   get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'
   post '/posts' => 'posts#create', as: 'articles'
   patch '/posts/:id/edit' => 'posts#update', as: 'update_post'
   delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
   root to: 'homes#top'
end
