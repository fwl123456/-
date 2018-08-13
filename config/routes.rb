Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :wx_publics, only:[:index,:show] do
        resources :articles, only:[:index,:show]
      end
    end
  end

end
