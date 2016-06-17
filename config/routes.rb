Rails.application.routes.draw do
  root 'welcome#index'
  resources :observations
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
end
