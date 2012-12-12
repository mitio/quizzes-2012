Quizzes::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  resources :quizzes
  root to: 'quizzes#index'
end
