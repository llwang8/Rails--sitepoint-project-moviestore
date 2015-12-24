class MoviesController < ApplicationController

  def index
    #@search = Movie.search(params[:q])
    #@movies = @search.result
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @cart_action = @movie.cart_action current_user.try :id
  end

end

