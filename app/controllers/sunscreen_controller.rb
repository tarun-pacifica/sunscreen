class SunscreenController < ApplicationController

  def index
    # Radiation.fetch_and_save_uv_indices
  end

  def show
    @city = City.find params[:city].to_i
    # @uv_index = @city.index
    @uv_index = Radiation.uv_index @city.name
    redirect_to naked_path(name: @city.name, index: @uv_index) if @uv_index.zero?
    redirect_to burnt_path(name: @city.name, index: @uv_index) if @uv_index != 0
    # redirect_to burnt_path(name: @city.name, index: @uv_index)
  end

  def naked
    @city = params[:name]
    @uv_index = params[:index]
  end

  def burnt
    @city = params[:name]
    @uv_index = params[:index]
  end

end