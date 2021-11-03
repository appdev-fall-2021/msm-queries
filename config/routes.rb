Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

#rule of thumb: one controller per database table!

get("/directors", { :controller => "directors", :action => "index"})

get("/directors/eldest", { :controller => "directors", :action => "wisest"})



end
