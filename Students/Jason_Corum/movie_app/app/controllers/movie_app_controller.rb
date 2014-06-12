class MovieAppController < ApplicationController
  def index
  	@my_movies = Movie.all
  end
end
