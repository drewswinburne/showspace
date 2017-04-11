Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'shows#index'
  get "shows/lastweek", to: 'shows#last_week'
  get "shows/nextweek", to: 'shows#next_week'

  resources :artists
  resources :shows
  resources :performances
  get "/disclaimer", to: "shows#disclaimer"

end
