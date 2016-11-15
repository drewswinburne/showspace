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
end

def new
  @artist = Artist.new
end

def create
  @artist = Arist.create(artist_params)
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
