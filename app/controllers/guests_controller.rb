class GuestsController < ApplicationController

  def index
    @guests = Guest.all
  end

  def create
    
  end

  def show
    @guest = Guest.find(params[:id])
  end



end
