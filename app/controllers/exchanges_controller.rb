class ExchangesController < ApplicationController

  def index
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges
  end

end
