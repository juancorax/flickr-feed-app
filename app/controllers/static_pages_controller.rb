require "flickr"

class StaticPagesController < ApplicationController
  def index
    if params[:flickr_user_id].present?
      flickr = Flickr.new

      @photos = flickr.photos.search(user_id: params[:flickr_user_id])
    end
  end
end
