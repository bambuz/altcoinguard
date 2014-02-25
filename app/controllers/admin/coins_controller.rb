class Admin::CoinsController < ApplicationController

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
  end

  def update
  end

  private

  def coin_params
  	params[:coin].permit(:thumbnail, :name)
  end

end
