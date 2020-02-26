class HomeController < ApplicationController
  def index
    @channels = Channel.all.order('id desc')
    if params[:search]
      search_key = "%#{params[:search]}%"
      @channels = Channel.where("name LIKE ?", search_key)
      @shows = Show.where("name LIKE ?", search_key)
    end
  end
end
