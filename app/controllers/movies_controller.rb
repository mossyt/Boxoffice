class MoviesController < ApplicationController

  def index
    @movies = Movie.all
    @movies = Movie.all
  if params[:search]
    @movies = Movie.search(params[:search]).order("created_at DESC")
  else
    @movies = Movie.all.order('created_at DESC')
  
end

  end

  def show
    @movie = Movie.find(params[:id])
    @actors = @movie.actors
  end

  def new
    @movie = Movie.new
    respond_with(@movie)
  end

  def edit
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    respond_with(@movie)
  end

  def update
    @movie.update(movie_params)
    respond_with(@movie)
  end

  def destroy
    @movie.destroy
    respond_with(@movie)
  end

  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def movie_params
      params[:movie]
    end
end
