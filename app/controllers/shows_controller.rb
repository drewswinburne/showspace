class ShowsController < ApplicationController

  def index
    @shows = Show.all
    @performances = Performance.all
    today = Date.today # Today's date
    @days_from_this_week = (today.at_beginning_of_week..today.at_end_of_week + 6.days).map

  end

  def new
    @show = Show.new
  end

  def create
    @show = Show.create(show_params)
@show.save
redirect_to shows_path
  end

private
def show_params
  params.require(:show).permit(:flyer_img, :starts_at)

end

end
