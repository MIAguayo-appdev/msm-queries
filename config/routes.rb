Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", {:controller => "directors", :action => "index"})
  get("/directors/eldest", {:controller => "directors", :action => "wisest"})
  get("/directors/youngest", {:controller => "directors", :action => "newbie"})
  get("/directors/:an_id", {:controller => "directors", :action => "director_details"})

  get("/movies", {:controller => "movies", :action => "index"})

  get("/actors", {:controller => "actors", :action => "index"})


  #get("/movies", {:controller => "directors", :action => "newbie"})


  #get("/directors", {:controller => "", :action => ""})


end
