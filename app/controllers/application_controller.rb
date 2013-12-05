class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def create
    if params[:lat] && params[:lng]
      @lat=params[:lat]
      @lng=params[:lng]

      @location = Location.new(latitude: @lat, longitude: @lng)
      if @location.save
        #redirect_to root, :notice => "Successfully created location."
      else
        #redirect_to root, :notice => "Failed creating location"
      end
    elsif params[:lat]
      @lat=params[:lat]

      @location = Location.new(latitude: @lat)
      if @location.save

      else

      end
    end
  end

  def index
    if params[:lat] && params[:lng]
      @lat=params[:lat]
      @lng=params[:lng]
    else
      @lat="NONE"
      @lng="NONE"
    end
  end
end
