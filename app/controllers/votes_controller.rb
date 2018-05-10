class VotesController < ApplicationController
  def index
    @songs = Song.all
  end

  def create
    @song = Song.find(params[:song_id])
    @vote = Vote.create(vote_params)
    if @vote
      redirect_to root_path, notice: '投票したよ'
    else
      redirect_to :index, alert: 'エラーで投票できなかった・・・ もう一度やってみてください'
    end
  end

  private

  def vote_params
    params.permit(:song_id, :name, :body)
  end
end
