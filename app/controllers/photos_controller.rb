class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params["id"]
    @photo = Photo.find_by({ :id=> params["id"]})
  end

  def new_form

  end

  def create_row
    @url = params["the_source"]
    @caption = params["the_caption"]
    z = Photo.new
    z.caption = @caption
    z.source = @url
    z.save
    redirect_to("http://localhost:3000/photos")
  end
end
