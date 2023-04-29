Rails.application.routes.draw do
  get 'home/top'
  get 'searchwords/new'
  get 'searchwords/edit'
  get 'searchwords/destroy'
  get 'searchwords/index'
  get 'turningpoints/new'
  get 'turningpoints/edit'
  get 'turningpoints/destroy'
  get 'turningpoints/index'
  get 'goals/new'
  get 'goals/edit'
  get 'goals/destroy'
  get 'goals/index'
  get 'users/new'
  get 'users/edit'
  get 'users/index'
  get 'diaries/new'
  get 'diaries/edit'
  get 'diaries/show'
  get 'diaries/index'
  namespace :admin do
    get 'users/new'
    get 'users/edit'
    get 'users/show'
    get 'users/index'
    resources :users
  end

  root to: 'home#top'
  resources :diaries
end
