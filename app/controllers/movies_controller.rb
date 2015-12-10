class MoviesController < ApplicationController
  def show
    @movies = Movie.find(params[:id])
  end

  def index
    @movie = Movie.all
  end
end
