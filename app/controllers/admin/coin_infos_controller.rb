class Admin::CoinInfosController < ApplicationController

  def index
  	@coin = Coin.find(params[:coin_id])
  	@coininfo = @coin.coin_info
  end

  def new
  	@coin = Coin.find(params[:coin_id])
  	@coininfo = CoinInfo.new coin: @coin
  end

  def create
  	@coin = Coin.find(params[:coin_id])
  	@coininfo = @coin.build_coin_info coininfo_params
  	@coininfo.save

  	redirect_to admin_coins_url
  end

  def edit
  end

  private

  def coininfo_params 
		params[:coin_info].permit(:totalcoins, :coinsperblock)
	end


end