class GuestAppearancesController < ApplicationController

  def new
    @guest_appearance = GuestAppearance.new
  end

  def create
    @guest_appearance = GuestAppearance.new(guest_appearance_params)
    if !@guest_appearance.save
      render 'guest_apppearances/new'
    else
      redirect_to guests_path
    end
  end

  private

  def guest_appearance_params
    params.require(:guest_appearance).permit(:guest_id, :episode_id, :rating)
  end

end
