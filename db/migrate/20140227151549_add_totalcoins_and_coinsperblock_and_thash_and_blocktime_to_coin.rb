class AddTotalcoinsAndCoinsperblockAndThashAndBlocktimeToCoin < ActiveRecord::Migration
  def change
    add_column :coins, :totalcoins, :integer
    add_column :coins, :coinsperblock, :float
    add_column :coins, :thash, :float
    add_column :coins, :blocktime, :time
  end
end
