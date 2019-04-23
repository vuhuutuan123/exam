Rails.application.routes.draw do
  devise_for :admin, controllers: {sessions: 'admin/sessions'}

  namespace :admin do
    resources :home, to: "home#index" , as: :home
    resources :topics
  end
end
