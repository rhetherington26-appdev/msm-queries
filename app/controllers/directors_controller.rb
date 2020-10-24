class DirectorsController < ApplicationController

  def index
    @list_of_directors = Director.all
   render({ :template => "directors_templates/index.html.erb"})
  end

  def eldest

    @eldest_director = Director.all.order({ :dob => :asc}).where.not({ :dob =>:nil  }).at(0)

    render({ :template => "directors_templates/eldest.html.erb"})
  end

  def youngest

    @youngest_director = Director.all.order({ :dob => :desc}).where.not({ :dob =>:nil  }).at(0)

    render({ :template => "directors_templates/youngest.html.erb"})
  end


 def bio
  @director_id = params.fetch("director_id")

  @director = Director.where({ :id => @director_id}).at(0)

  @movies = Movie.where({:director_id => @director_id})

  render({ :template => "directors_templates/biography.html.erb"})
 end



end
