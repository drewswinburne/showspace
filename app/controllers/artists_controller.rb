class ArtistsController < ApplicationController
before_action :set_artist, except: [:index, :new, :create]

def set_artist
  @artist = Artist.find(params[:id])
end

def index
  @artists = Artist.all
end

def show
  @performances = Performance.where(artist_id: params[:id])
  @performanceorder = @performances.sort_by {|x| x.show.starts_at_date}
end

def new
  @artist = Artist.new
end

def create
  @artist = Artist.new(artist_params)
  if @artist.save
    redirect_to artists_path
  else
    render :new
  end
end

def edit
end

def update
  @artist.update(artist_params)
  redirect_to artist_path(@artist)
end

def destroy
  @artist.destroy
  redirect_to artists_path
end

private
def artist_params
 params.require(:artist).permit(:name, :img_url, :bio, :music_url)

end

end
