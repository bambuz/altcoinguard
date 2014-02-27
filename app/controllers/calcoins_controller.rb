class CalcoinsController < ApplicationController
  def index
  	@calcoins = Calcoin.all
  end
end
