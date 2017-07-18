class CloudsController < ApplicationController
  def index
    @clouds = Cloud.all
  end
end
