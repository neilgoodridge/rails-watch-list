class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def find_movie
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def show
    @movie = Movie.find(params[:id])
     #@review = Review.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movie_path(@movie)
    else
      render "new"
    end
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
