class Admin::ExchangesController < ApplicationController

  layout "admin"

  def index
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges
  end


  def new
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges.build
  end

  def create
  	@coin = Coin.find(params[:coin_id])
  	@exchange = @coin.exchanges.build params_exchanges

  	@exchange.save

  	redirect_to admin_coin_exchanges_path
  end

  def edit
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges.find params[:id]
  end

  def update
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges.find params[:id]
  	
  	@exchanges.update params_exchanges


  	redirect_to admin_coin_exchanges_path
  end

  def destroy
  	@coin = Coin.find(params[:coin_id])
  	@exchanges = @coin.exchanges.find params[:id]

  	@exchanges.destroy

  	redirect_to admin_coin_exchanges_url
  end

  private

  def params_exchanges
  	params[:exchange].permit(:name, :hashrate, :coin_id)
  end

end