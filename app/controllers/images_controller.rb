class ImagesController < ApplicationController

  def create
    @image = Image.create(image_params)
  end

  private
  def image_params
    params.require(:image).permit(:url, :grandma_id)
  end
end
