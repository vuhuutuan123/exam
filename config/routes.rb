Rails.application.routes.draw do
  devise_for :admin, controllers: {sessions: 'admin/sessions'}

  namespace :admin do
    resources :home
    resources :topics
    resources :tests
  end
end
