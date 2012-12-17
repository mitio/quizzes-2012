Quizzes::Application.routes.draw do
  resources :quizzes do
    resources :questions
  end
  root to: 'quizzes#index'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
end
