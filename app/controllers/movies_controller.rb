class MoviesController < ApplicationController

  def index
    @list_of_movies = Movie.all
   render({ :template => "movie_templates/index.html.erb"})
  end

  def summary
    @instance = params.fetch("movie_id")
    @movie = Movie.all.where( :id => @instance).at(0)
    
   render({ :template => "movie_templates/summary.html.erb"})
  end
end
