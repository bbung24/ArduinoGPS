class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception

  def create
    if params[:lat] && params[:lng] && params[:name]
      @lat=params[:lat]
      @lng=params[:lng]
      @infowindow=params[:name].to_s

      #if @location = Location.find_by_infowindow(@infowindow)
      #  @location.update(latitue:@lat, longitude:@lng)
      #else
        @location = Location.new(latitude: @lat, longitude: @lng, infowindow: @infowindow)
        if @location.save
          logger.info("successfully saved lat:"+@lat.to_s+", lng:"+@lng.to_s+", infowindow:"+@infowindow.to_s)
          #redirect_to root, :notice => "Successfully created location."
        else
          #redirect_to root, :notice => "Failed creating location"
        end
      #end
    else
      logger.info("Wrong input")
    end
  end

  def index
    if params[:lat] && params[:lng] && params[:name]
      @lat=params[:lat]
      @lng=params[:lng]
      @infowindow=params[:name].to_s

      if @location = Location.find_by_name(@infowindow)
        @location.update(latitue:@lat, longitude:@lng)
      else
        @location = Location.new(latitude: @lat, longitude: @lng, infowindow: @infowindow)
        if @location.save
          #redirect_to root, :notice => "Successfully created location."
        else
          #redirect_to root, :notice => "Failed creating location"
        end
      end
    else
      logger.info("Wrong input")
    end
  end
end
