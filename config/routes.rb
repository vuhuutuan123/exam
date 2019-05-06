Rails.application.routes.draw do

  devise_for :user, controllers: {sessions: 'user/sessions'}
  devise_for :admin, controllers: {sessions: 'admin/sessions'}

  namespace :admin do
    resources :home
    resources :topics
    resources :tests
  end

  namespace :user do
    resources :home
    resources :profile
  end

end
