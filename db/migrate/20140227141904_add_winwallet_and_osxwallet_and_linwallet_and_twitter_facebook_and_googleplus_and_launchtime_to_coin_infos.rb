class AddWinwalletAndOsxwalletAndLinwalletAndTwitterFacebookAndGoogleplusAndLaunchtimeToCoinInfos < ActiveRecord::Migration
  def change
    add_column :coin_infos, :winwallet, :string
    add_column :coin_infos, :osxwallet, :string
    add_column :coin_infos, :linwallet, :string
    add_column :coin_infos, :twitter, :string
    add_column :coin_infos, :facebook, :string
    add_column :coin_infos, :googleplus, :string
    add_column :coin_infos, :launchtime, :timedate
  end
end
