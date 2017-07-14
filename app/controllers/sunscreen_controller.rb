class SunscreenController < ApplicationController
  def index; end

  def show
    @city = City.find params[:city].to_i
    @uv_index = Radiation.uv_index @city.name
     render partial: "naked" if @uv_index < 0.2
     render partial: "burnt" if @uv_index >= 0.2
  end
end