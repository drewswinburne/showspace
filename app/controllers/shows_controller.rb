class ShowsController < ApplicationController

  def index
    @shows = Show.all
    @performances = Performance.all
    today = Date.today # Today's date
    @days_from_this_week = (today.at_beginning_of_week..today.at_end_of_week + 6.days).map

  end

  def new

  end

end
