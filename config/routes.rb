# frozen_string_literal: true

Rails.application.routes.draw do


  resources :meals, except: %i[new edit]
  resources :days, except: %i[new edit]
  # RESTful routes
  resources :examples, except: %i[new edit]


  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'
  get '/users' => 'users#index'

  get '/users/:id' => 'users#show'

end
