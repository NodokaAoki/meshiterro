Rails.application.routes.draw do
  devise_for :users
  root 'post_images#index' # ログイン認証後、投稿画像一覧画面を表示
  resources :post_images, only:[:new, :create, :index, :show] #生成するルーティングを限定
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
