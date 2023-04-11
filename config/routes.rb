Rails.application.routes.draw do
  namespace :admin do
    get 'users/index'
    get 'users/show'
    get 'users/edit'
    get 'users/update'
  end
  namespace :admin do
    get 'seasons/index'
    get 'seasons/create'
    get 'seasons/edit'
    get 'seasons/update'
  end
  namespace :admin do
    get 'pictures/index'
    get 'pictures/show'
    get 'pictures/edit'
    get 'pictures/update'
    get 'pictures/destroy'
  end
  namespace :public do
    get 'seasons/index'
  end
  namespace :public do
    get 'prefectures/index'
  end
  namespace :public do
    get 'categories/index'
  end
  get 'wanna_goes/create'
  get 'wanna_goes/destroy'
  namespace :public do
    get 'users/show'
    get 'users/edit'
    get 'users/update'
    get 'users/confirm_withdraw'
    get 'users/withdraw'
  end
  namespace :public do
    get 'pictures/new'
    get 'pictures/create'
    get 'pictures/index'
    get 'pictures/show'
    get 'pictures/edit'
    get 'pictures/update'
    get 'pictures/destroy'
  end
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }


  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
