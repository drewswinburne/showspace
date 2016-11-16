class ShowsController < ApplicationController

  def index
    @shows = Show.all
    @performances = Performance.all
    today = Date.today # Today's date
    @days_from_this_week = (today.at_beginning_of_week..today.at_end_of_week).map

  end

  def new
    @show = Show.new
  end

  def show
    @show = Show.find(params[:id])
    @performances = Performance.where(show_id: params[:id])

  end

  def create
    @show = Show.new(show_params)
@show.save
redirect_to shows_path
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    redirect_to @show
  end

  def destroy
  @show.destroy
  redirect_to shows_path
end


private
def show_params
  params.require(:show).permit(:flyer_img, :starts_at_date, :starts_at_hour)

end

end
