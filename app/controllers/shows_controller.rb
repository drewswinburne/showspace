class ShowsController < ApplicationController
 # before_action :index, except: [:new, :create]
 before_action :index, :set_week, except: [:new, :create]
  # before_action :set_date,  only: [:day]
  # before_action :set_week,  only: [:week]
  # before_action :set_month, only: [:month]

  def index
    @shows = Show.all
    @performances = Performance.all
    # @performances = Performance.within_week(Date.current)
    end

def set_week
  @today = Date.today # Today's date
  @days_from_this_week = (@today.at_beginning_of_week..@today.at_end_of_week).map
  @days_from_last_week = ((@today.at_beginning_of_week - 7.days)..(@today.at_end_of_week - 7.days)).map
  @days_from_next_week = ((@today.at_beginning_of_week + 7.days)..(@today.at_end_of_week + 7.days)).map

end

def last_week
  @days_from_this_week = @days_from_last_week
  render :index
end

def next_week
  @days_from_this_week = @days_from_next_week
  render :index
end

# this stuff is from date_paginate
# def day
#     @performances = Performance.within_day(@date)
#   end
#
#   def week
#     @performances = Performance.within_week(@date)
#   end
#
#   def month
#     @performances = Performance.within_month(@date)
#   end


  def new
    @show = Show.new
  end

  def disclaimer
    render :disclaimer
  end

  def show
    @show = Show.find(params[:id])
    @performances = Performance.where(show_id: params[:id])

  end

  def create
    @show = Show.new(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    @show.update(show_params)
    if @show.save
      redirect_to show_path(@show)
    else
      render :edit
    end
  end

  def destroy
    @show = Show.find(params[:id])
  @show.destroy
  redirect_to shows_path
end


private
def show_params
  params.require(:show).permit(:flyer_img, :starts_at_date, :starts_at_hour, :venue, :cost)

end

end
