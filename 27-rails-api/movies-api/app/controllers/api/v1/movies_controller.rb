class Api::V1::MoviesController < ApplicationController
  def index
    movies = Movie.all.sort_by { |movie| movie.title }

    render json: movies
  end

  def show
    movie = Movie.find(params[:id])

    render json: movie
  end

  def update
    movie = Movie.find(params[:id])

    movie.update(movie_params)

    render json: movie
  end
  
  def create
    movie = Movie.create(movie_params)

    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
  end

  private

  def movie_params
    params.require(:movie).permit(:genre, :year, :score, :imageUrl, :title)
  end
end
