class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
   render({ :template => "actors_templates/index.html.erb"})
  end

  def bio
    @instance = params.fetch("actor_id")
    @actor = Actor.all.where( :id => @instance).at(0)
   render({ :template => "actors_templates/bio.html.erb"})
  end
  
end