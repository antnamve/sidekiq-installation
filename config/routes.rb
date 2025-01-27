require 'sidekiq/web'

Rails.application.routes.draw do
  devise_for :users
  # authenticate :user, lambda { |u| u.admin? } do
  authenticate :user, ->(u) { u.admin? } do
    mount Sidekiq::Web => '/sidekiq'
  end

  post 'hello', to: 'pages#hello'

  root 'pages#home'
end
