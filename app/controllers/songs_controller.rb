class SongsController < ApplicationController

before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end

  def show
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    redirect_to @song
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_song
    @song = Song.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :released, :released_year, :artist_name, :genre)
  end
end
