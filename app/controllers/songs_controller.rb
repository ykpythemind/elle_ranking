class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
  end

  def just_created?
    alert || notice # FIXME 雑
  end

  helper_method :just_created?
end
