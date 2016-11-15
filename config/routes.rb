Rails.application.routes.draw do

  get 'categories/posts'

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts do
    resources :comments, only: [:create, :destroy, :edit, :update]
  end

  get 'users/:id/posts' => 'users#posts', :as => :user_posts
  get 'categories/:id/posts' => 'categories#posts', :as => :category_posts



  root 'posts#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
