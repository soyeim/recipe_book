Rails.application.routes.draw do
  # Routes for the Photo resource:

  # CREATE
  post("/insert_photo", { :controller => "photos", :action => "create" })
          
  # READ
  get("/photos", { :controller => "photos", :action => "index" })
  
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  
  # UPDATE
  
  post("/modify_photo/:path_id", { :controller => "photos", :action => "update" })
  
  # DELETE
  get("/delete_photo/:path_id", { :controller => "photos", :action => "destroy" })

  #------------------------------

  # Routes for the Recipe resource:
  root to: "dishes#index"
  # CREATE
  post("/insert_recipe", { :controller => "recipes", :action => "create" })
          
  # READ
  get("/recipes", { :controller => "recipes", :action => "index" })
  
  get("/recipes/:path_id", { :controller => "recipes", :action => "show" })
  
  # UPDATE
  
  post("/modify_recipe/:path_id", { :controller => "recipes", :action => "update" })
  
  # DELETE
  get("/delete_recipe/:path_id", { :controller => "recipes", :action => "destroy" })

  #------------------------------

  devise_for :users
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

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
