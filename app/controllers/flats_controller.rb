class FlatsController < ApplicationController
  def index
    @flats = Flat.all
    @flat = Flat.first
  end

  def show
    @flat = Flat.find(params[:id])
  end
end
