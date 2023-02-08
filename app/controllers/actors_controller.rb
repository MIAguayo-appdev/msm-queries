class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({:template => "actor_template/index.html.erb"})
  end


  def actor_details
    #params looks like {"the_id" => "42"}

    the_id = params.fetch("an_id")  
    
    @the_actor = Actor.where({ :id => the_id })
    @filmography = Character.where({ :actor_id => @the_actor.first.id })
    

    render({:template => "actor_template/show.html.erb"})
  end

  
end
