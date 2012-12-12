Quizzes::Application.routes.draw do
  resources :quizzes
  root to: 'quizzes#index'

  ActiveAdmin.routes(self)
  devise_for :admin_users, ActiveAdmin::Devise.config
end
