class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @id = params["id"]
    @photo = Photo.find(params["id"])
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

  def destroy
    @photo = Photo.find(params["id"])
    @photo.destroy
    redirect_to("http://localhost:3000/photos")
  end

  def edit_form
    @id = params["id"]
    @photo = Photo.find(params["id"])
  end

  def update_row
    @url = params["the_source"]
    @caption = params["the_caption"]
    z = Photo.find(params["id"])
    z.caption = @caption
    z.source = @url
    z.save
    redirect_to("http://localhost:3000/photos")
  end
end
