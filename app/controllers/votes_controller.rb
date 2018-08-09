class VotesController < ApplicationController
  before_action :set_song

  def new
    @vote = @song.votes.build
  end

  def create
    @vote = @song.votes.build(vote_params)
    @vote.ip = request.remote_ip
    if @vote.save
      if @vote.body.present?
        redirect_to song_path(@song), notice: "#{@song.title}にコメントしたよ"
      else
        redirect_to song_path(@song), notice: "#{@song.title}に投票したよ"
      end
    else
      render :edit, alert: 'エラーでできなかった・・・ もう一度やってみてください'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:name, :body)
  end

  def set_song
    @song = Song.find(params[:song_id])
  end

end
