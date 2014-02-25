class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :coin_infos, :coinspreblock, :coinsperblock
  end
end
