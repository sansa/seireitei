Rails.application.routes.draw do
  namespace :txtboss do
    resources :site
  end

  root 'application#index'
end
