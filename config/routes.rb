Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

#rule of thumb: one controller per database table!

get("/directors", { :controller => "directors", :action => "index"})

get("/directors/eldest", { :controller => "directors", :action => "wisest"})

get("/directors/:an_id", { :controller => "directors", :action => "director_details"})


end
