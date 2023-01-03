class AnimesController < ApplicationController

  def index
    animes = Anime.all
    render json: animes.as_json
  end

  def create
    anime = Anime.create(
      name: params[:name],
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
      name: params[:name] || anime.name,
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
