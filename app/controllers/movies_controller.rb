class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
    render({:template => "movie_templates/index.html.erb"})
  end

  def movie_details
    #params looks like {"the_id" => "42"}

    the_id = params.fetch("an_id")  
    
    @the_movie = Movie.where({ :id => the_id })
    #@filmography = Movie.where({ :director_id => @the_director.first.id })
    

    render({:template => "movie_templates/show.html.erb"})
  end


end
