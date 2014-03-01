class Coin < ActiveRecord::Base
	has_many :pools
	has_many :exchanges
end
