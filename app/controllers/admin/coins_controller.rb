class Admin::CoinsController < ApplicationController

  layout "admin"

  def index
  	@coins = Coin.all
  end

  def new
  	@coin = Coin.new
  end

  def create
  	@coin = Coin.new coin_params
  	if @coin.save
			redirect_to admin_coins_url
		else
			render "new"
		end
  end

  def edit
  	@coin = Coin.find params[:id]
  end

  def update
  	@coin = Coin.find params[:id]
  	if @coin.update coin_params
  		redirect_to admin_coins_url
  	else
  		render "edit"
  	end
  end

  def destroy
  	@coin = Coin.find params[:id]
  	@coin.destroy

  	redirect_to admin_coins_url
  end

  private

  def coin_params
  	params[:coin].permit(:thumbnail, :name)
  end

end
