class CoinInfosController < ApplicationController
  def index
  	@coin = Coin.find(params[:coin_id])
  	@coininfo = @coin.coin_info
  end
end
