Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

#rule of thumb: one controller per database table!

get("/directors", { :controller => "directors", :action => "index"})

get("/directors/eldest", { :controller => "directors", :action => "wisest"})

#order is important (:an_id)
get("/directors/youngest", { :controller => "directors", :action => "coolest"})

get("/directors/:an_id", { :controller => "directors", :action => "director_details"})

#MOVIES
get("/movies", { :controller => "movies", :action => "index"})

get("/movies/:an_id", { :controller => "movies", :action => "movie_details"})

end
