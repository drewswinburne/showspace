class PerformancesController < ApplicationController

def index
end

def new
  @performance = Performance.new
  @upcoming = Show.where("starts_at_date > ?", DateTime.now - 1)
  # @show = Show.find(params[:id])
end

def show

end

def create
  @performance = Performance.new(performance_params)
  @performance.save
  redirect_to shows_path
end

def destroy
  @performance = Performance.find(params[:id])
@performance.destroy
redirect_to shows_path
end

private
def performance_params
  params.require(:performance).permit(:artist_id, :show_id)

end


end
