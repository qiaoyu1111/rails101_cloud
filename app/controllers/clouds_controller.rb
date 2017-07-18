class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end

  def show
  end

  def new
    @cloud = Cloud.new
  end

  def create
    @cloud = Cloud.new(cloud_params)
    @cloud.save
    redirect_to clouds_path
  end

  private

  def cloud_params
    params.require(:cloud).permit(:title, :body)
  end
end
