class VotesController < ApplicationController
  def index
    @songs = Song.all
  end

  def create
    @song = Song.find(params[:id])
    
  end
end
