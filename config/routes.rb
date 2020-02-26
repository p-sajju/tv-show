Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  resources :channels do
    resources :shows
  end
  get 'my_fav_show/:id', :to => 'shows#my_fav_show', as: :add_my_fav
end
