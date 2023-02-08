class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({:template => "actor_template/index.html.erb"})
  end

end

