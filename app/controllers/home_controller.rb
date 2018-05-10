class HomeController < ApplicationController
  def index
    @songs = Song.order_by_count.take(15)
  end
end
