Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "pages#home"
  get "pages/home", to: "pages#home"

  # resources :recipes
  ## this line provides the following routes
#       recipes GET    /recipes(.:format)          recipes#index
#             POST   /recipes(.:format)          recipes#create
#  new_recipe GET    /recipes/new(.:format)      recipes#new
# edit_recipe GET    /recipes/:id/edit(.:format) recipes#edit
#      recipe GET    /recipes/:id(.:format)      recipes#show
#             PATCH  /recipes/:id(.:format)      recipes#update
#             PUT    /recipes/:id(.:format)      recipes#update
#             DELETE /recipes/:id(.:format)      recipes#destroy

	get "/recipes", to: "recipes#index"

end



















