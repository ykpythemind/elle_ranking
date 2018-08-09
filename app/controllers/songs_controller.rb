class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def quick_votes
    @song = Song.find(params[:song_id])
    vote = @song.votes.build(ip: request.remote_ip)
    vote.save!
    redirect_to song_path(@song), notice: "#{@song.title}に投票したよ"
  end

  def just_created?
    alert || notice # FIXME 雑
  end

  helper_method :just_created?
end
