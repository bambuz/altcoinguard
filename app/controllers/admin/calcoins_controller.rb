class Admin::CalcoinsController < ApplicationController

	layout "admin"
  
  def index
  	@calcoins = Calcoin.all
  end

  def new
  	@calcoin = Calcoin.new
  end

  def create
  	@calcoin = Calcoin.new calcoin_params
  	if @calcoin.save
			redirect_to admin_calcoins_url
		else
			render "new"
		end
  end

  def edit
  	@calcoin = Calcoin.find params[:id]
  end

  def update
  	@calcoin = Calcoin.find params[:id]
  	if @calcoin.update calcoin_params
  		redirect_to admin_calcoins_url
  	else
  		render "edit"
  	end
  end

  def destroy
  	@calcoin = Calcoin.find params[:id]
  	@calcoin.destroy

  	redirect_to admin_calcoins_url
  end

  private

  def calcoin_params
  	params[:calcoin].permit(:name, :launchdate)
  end

end