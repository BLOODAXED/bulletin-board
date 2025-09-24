Rails.application.routes.draw do
  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:
  get("/", { :controller => "boards", :action => "index" })
  get("/boards/:path_id", { :controller => "boards", :action => "show" })
end
