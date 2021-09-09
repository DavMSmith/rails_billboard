class ArtistsController < ApplicationController
  before_action :set_billboard
  def index
    @artists = @billboard.artists
    render component: 'Artists', props {billboard: @billboard, artists: @artists }
  end

  def show
    @artist = @billboard.artists.find(params[:id])
    render component: 'Artist', props: { billboard: @billboard, artist: @artist}
  end

  def new
    @artist = @billboard.artists.new
    render component: "ArtistNew', props: {billboard: @billboard, artist: @artist}"
  end

  def edit
    @artist = @billboard.artists.find(params[:id])
    render component: 'ArtistEdit', props: { billboard: @billboard, artist: @artist}
  end

  def create
    @artist = @billboard.artists.new(artist_params)
    if artist.save  
      redirect_to root_path
    else
    render component: 'ArtistNew', props: { billboard: @billboard, artist: @artist}
  end

  def update
    @artist = @billboard.artists.find(params[:id])
    if @artist.update(artist_params)
      redirect_to root_path
    else
      render component: 'ArtistEdit', props: {billboard: @billboard, artist: @artist }
  end

  def destroy
    @billboard.artists.find(params[:id]).destroy
    redirect_to root_path
  end

  private
    def set_billboard
      @billboard = Billboard.find(params: [billboard_id])
    end
end
