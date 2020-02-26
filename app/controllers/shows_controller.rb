class ShowsController < ApplicationController

  def my_fav_show
    show = Show.find params[:id]
    if show.present?
      UserFavShow.create({user_id: current_user.id, show_id: show.id})
      flash[:notice] = "Added to fav show"
    else
      flash[:alert] = "No show found"
    end
    redirect_to root_path
  end
end
