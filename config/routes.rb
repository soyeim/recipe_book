Rails.application.routes.draw do
  devise_for :users

  root to: "dishes#index"

  #------------------------------

  # Routes for the Dish resource:

  # CREATE
  post("/insert_dish", { :controller => "dishes", :action => "create" })
          
  # READ
  get("/dishes", { :controller => "dishes", :action => "index" })
  
  get("/dishes/:path_id", { :controller => "dishes", :action => "show" })
  
  # UPDATE
  
  post("/modify_dish/:path_id", { :controller => "dishes", :action => "update" })
  
  # DELETE
  get("/delete_dish/:path_id", { :controller => "dishes", :action => "destroy" })

  #------------------------------
  get("/users", { :controller => "users", :action => "index"})
  get("/users/:username", {:controller => "users", :action => "show"})

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
