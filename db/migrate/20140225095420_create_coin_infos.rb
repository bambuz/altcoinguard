class CreateCoinInfos < ActiveRecord::Migration
  def change
    create_table :coin_infos do |t|
      t.integer :totalcoins
      t.float :coinspreblock
      t.references :coin, index: true

      t.timestamps
    end
  end
end
