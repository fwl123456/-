require 'sidekiq/web'
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Sidekiq::Web => '/sidekiq'
  namespace :api, format: 'json' do
    namespace :v1 do
      namespace :admin do     
        resources :wx_publics, only:[:index, :show, :create, :update, :destroy] do
          resources :articles, only:[:index, :show] do
            resources :article_logs, only:[:index, :show]
          end
        end
      end
      resources :wx_publics, only:[:index] do
        resources :articles, only:[:index, :show] do
          resources :article_logs, only:[:index, :show, :create, :update, :destroy]
        end
      end
    end
  end

end

