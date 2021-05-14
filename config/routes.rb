Rails.application.routes.draw do
  scope '(:locale)', locale: /es|en/ do
    get 'home/grettings'
    namespace :v1, defaults: { format: 'json' } do
      resource :users, only: %i[create] do
        post 'login', on: :collection
      end
    end
  end
end
