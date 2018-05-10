class VotesController < ApplicationController
  def index
    @songs = Song.all
  end

  def edit
    @song = Song.find(params[:id])
    @vote = Vote.new(song_id: @song.to_param)
  end

  def create
    # FIXME
    @song = Song.find(params[:id] || params[:song_id] || params[:vote][:song_id])
    # FIXME
    @vote = Vote.create(song_id: @song.to_param, body: params.dig(:vote, :body), name: params.dig(:vote, :name), ip: request.remote_ip)
    # FIXME...
    if @vote
      if @vote.body.present?
        redirect_to song_path(@song), notice: "#{@song.title}にコメントしたよ"
      else
        redirect_to song_path(@song), notice: "#{@song.title}に投票したよ"
      end
    else
      redirect_to :index, alert: 'エラーでできなかった・・・ もう一度やってみてください'
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:song_id, :name, :body)
  end
end
