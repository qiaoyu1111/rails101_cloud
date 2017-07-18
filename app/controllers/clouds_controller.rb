class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end

  def show
    @cloud = Cloud.find(params[:id])
  end

  def new
    @cloud = Cloud.new
  end

  def create
    @cloud = Cloud.new(cloud_params)
    if @cloud.save
      redirect_to clouds_path
    else
      render :new
    end
  end

  def edit
    @cloud = Cloud.find(params[:id])
  end

  def update
    @cloud = Cloud.find(params[:id])
    @cloud.update(cloud_params)
    redirect_to clouds_path
  end

  def destroy
    @cloud = Cloud.find(params[:id])
    @cloud.destroy
    redirect_to clouds_path
  end

  private

  def cloud_params
    params.require(:cloud).permit(:title, :body, :image)
  end
end
