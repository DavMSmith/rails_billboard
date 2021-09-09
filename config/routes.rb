Rails.application.routes.draw do

  root 'billboards#index'
# resources :controller_name
resources :billboards

# resources :parent_controller do
#   resources :child_controller
# end

resources :billboards do
  resources :artists
end 

resources :artists do
  resources :songs
end
end
