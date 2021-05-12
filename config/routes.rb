Rails.application.routes.draw do
  scope '(:locale)', locale: /es|en/ do
    get 'home/grettings'
  end
end
