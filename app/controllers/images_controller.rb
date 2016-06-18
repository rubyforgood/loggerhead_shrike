class ImagesController< ApplicationController
  before_action :set_images

  def index
    @images = @observation.images
  end

  def create
    image = @observation.images.create(image_params)
    render partial: "image", locals: {image: image, idx: @observation.images.count}
  end

  private

  def set_observation
    @observation = observation.first_or_create!
  end

 def image_params
    params.require(:image).permit!
  end
end
