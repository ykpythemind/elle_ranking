class RanksController < ApplicationController
  def index
    @songs = Song.all.order_by_count
  end
end
