class ArtistsController < ApplicationController

def index
  @artists = Artist.all
end

def show
  @artist = Artist.find(params[:id])
  @performances = Performance.where(artist_id: params[:id])
end

def new
  @artist = Artist.new
end

def create
  @artist = Arist.create(artist_params)


end

private
def artist_params
 params.require(:artist).permit(:name, :img_url, :bio, :music_url)

end

end
