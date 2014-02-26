class PoolsController < ApplicationController

  def index
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools
  end

end
