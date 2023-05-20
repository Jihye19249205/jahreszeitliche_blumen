Rails.application.routes.draw do

  #管理者のルーティング
  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
  }

  namespace :admin do

    root to: "homes#top"
    resources :pictures, only: [:index, :show, :edit, :update, :destroy] do
      resources :picture_comments, only: [:edit, :update, :destroy]
      member do
        get 'search'
      end
    end
    resources :categories, only: [:index, :create, :edit, :update]
    resources :prefectures, only: [:index, :create, :edit, :update]
    resources :seasons, only: [:index, :create, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end

  #ユーザのルーティング
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  scope module: :public do
    devise_scope :user do
      get 'users/guest_sign_in', to: 'sessions#guest_sign_in'
      delete 'users/sign_out', to: 'sessions#destroy'
    end

    root to: "homes#index"
    get '/top' => "homes#top", as: 'top'
    get '/about' => "homes#about", as: 'about'
    resources :pictures do
      resource :wanna_goes, only: [:destroy, :create]
      resources :picture_comments, only: [:create, :destroy]
      collection do
        get 'search'
      end
    end
    resources :users, only: [:show, :edit, :update] do
      collection do
        get 'confirm_withdraw'
        patch 'withdraw'
      end
      member do
        get 'wanna_goes'
      end
    end
    resources :categories, only: [:index] do
      resource :prefectures, only: [:index]
      resource :seasons, only: [:index]
    end

  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
