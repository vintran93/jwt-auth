# Rails.application.routes.draw do
#   resources :users
#   resources :doctors, only: [:index, :show]
#   resources :users, only: [:create] do  # handles user sign up
#     resources :appointments
#   end

#   post "/login", to: "auth#login" # handles login for existing user in database
#   get "/auto_login", to: "auth#auto_login" # handles automatic login once user able to sign up/login
#   get "/user_is_authed", to: "auth#user_is_authed" #only accessible if user is authorized
# end

Rails.application.routes.draw do
  resource :users, only: [:create]
  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  get "/user_is_authed", to: "auth#user_is_authed"
end
