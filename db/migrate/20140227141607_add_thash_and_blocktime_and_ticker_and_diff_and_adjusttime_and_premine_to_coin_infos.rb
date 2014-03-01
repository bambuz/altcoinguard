class AddThashAndBlocktimeAndTickerAndDiffAndAdjusttimeAndPremineToCoinInfos < ActiveRecord::Migration
  def change
    add_column :coin_infos, :thash, :float
    add_column :coin_infos, :blocktime, :time
    add_column :coin_infos, :ticker, :string
    add_column :coin_infos, :diff, :float
    add_column :coin_infos, :adjusttime, :datetime
    add_column :coin_infos, :premine, :float
  end
end
