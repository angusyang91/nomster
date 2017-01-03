class PlacesController < ApplicationController

  def index
    @places = Place.all.order("name").page(params[:page]).per(5)

  end

end
