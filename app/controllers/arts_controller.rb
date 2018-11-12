class ArtsController < ApplicationController
  #before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @arts = Art.all
  end

  def show
    @art = Art.find_by(id: params[:id])
  end

  def new
    @art = Art.new
  end

  def create
    art = current_user.arts.create(art_params)
    redirect_to art_path(art)
  end

  def edit
    @art = Art.find(params[:id])
  end

  def update
    art = Art.find_by(id: params[:id])
    art.update(art_params)
    redirect_to art_path(art)
  end

  def destroy
    art = Art.find(params[:id])
    art.destroy
    redirect_to arts_path
  end

  private

  def art_params
    params.require(:art).permit(:name, :description, :price, :image, tag_ids: [])
  end
end
