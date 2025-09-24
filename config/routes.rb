Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  get("/boards", { :controller => "boards", :action => "index" })
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
  post("/insert_board", { :controller => "boards", :action => "create" })
  post("/insert_listing", { :controller => "boards", :action => "create_listing" })
end
