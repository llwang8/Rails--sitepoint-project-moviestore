class MoviesController < ApplicationController
  def show
    @movies = Movie.find(params[:id])
  end

  def index
    @movie = Movie.all
  end

  def poster
    "http://ia.media-imdb.com/images/M/#{poster_url}"
  end

  def imdb
    "http://www.imdb.com/title/#{imdb_id}/"
  end

end
