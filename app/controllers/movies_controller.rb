class MoviesController < ApplicationController

  def index
    @list_of_movies = Movies.all
    render({:template => "movie_template/index.html.erb"})
  end

end
