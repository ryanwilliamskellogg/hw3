Rails.application.routes.draw do
  # Define the home page
  root "places#index"  # same as: get("/", { controller: "places", action: "index" })

  # Places resource
  resources :places

  # Entries (keep these manually since you're not using full REST for them yet)
  get("/entries/new", { :controller => "entries", :action => "new" })
  post("/entries", { :controller => "entries", :action => "create" })
end

