class Coin < ActiveRecord::Base
	has_one :coin_info
	has_many :pools
	has_many :exchanges
end
