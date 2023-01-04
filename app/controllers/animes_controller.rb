class AnimesController < ApplicationController

  def index
    animes = Anime.all
    render json: animes.as_json
  end

  def create
    anime = Anime.create(
      title: params[:title],
      image_url: params[:image_url],
      description: params[:description],
      category: params[:category],
    )
    render json: anime.as_json
  end

  def show
    anime = Anime.find_by(id: params[:id])
    render json: anime.as_json
  end

  def update
    anime = Anime.find_by(id: params[:id])
    anime.update(
      title: params[:title] || anime.title,
      image_url: params[:image_url] || anime.image_url,
      description: params[:description] || anime.description,
      category: params[:category] || anime.category,
    )
    render json: anime.as_json
  end

  def destroy
    anime = Anime.find_by(id: params[:id])
    anime.destroy
    render json: { message: "Anime destroyed successfully" }
  end
end
