class WeatherController < ApplicationController
  def index
  end

  def show
  end

  def search

    return "No address provided" if params[:address].blank?

    addresses = Geolocation::ByStringService.execute(params[:address]).with_indifferent_access
    @address = addresses['results']
    
  end
end
