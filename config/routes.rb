Rails.application.routes.draw do
  root 'welcome#index'
  resources :observations
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  scope "/admin" do
    resources :users
  end
end
