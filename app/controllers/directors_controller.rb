class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
    render({:template => "director_template/index.html.erb"})
  end

  def wisest
    @list_of_directors = Director.all
    render({:template => "director_template/eldest.html.erb"})
  end


end
