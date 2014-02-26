class Admin::PoolsController < ApplicationController
	
  def index
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools
  end


  def new
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools.build
  end

  def create
  	@coin = Coin.find(params[:coin_id])
  	@pool = @coin.pools.build params_pools

  	@pool.save

  	redirect_to admin_coin_pools_path
  end

  def edit
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools.find params[:id]
  end

  def update
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools.find params[:id]
  	
  	@pools.update params_pools


  	redirect_to admin_coin_pools_path
  end

  def destroy
  	@coin = Coin.find(params[:coin_id])
  	@pools = @coin.pools.find params[:id]

  	@pools.destroy

  	redirect_to admin_coin_pools_url
  end

  private

  def params_pools
  	params[:pool].permit(:name, :link, :coin_id)
  end

end
