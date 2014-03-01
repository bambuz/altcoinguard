class DropCoinInfoTable < ActiveRecord::Migration
  def up
    drop_table :coin_infos
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
