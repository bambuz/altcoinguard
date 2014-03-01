class AddExplorerAndAlgorithmAndWebpageAndBitcointalkAndForumAndDeveloperToCoinInfos < ActiveRecord::Migration
  def change
    add_column :coin_infos, :explorer, :string
    add_column :coin_infos, :algorithm, :string
    add_column :coin_infos, :webpage, :string
    add_column :coin_infos, :bitcointalk, :string
    add_column :coin_infos, :forum, :string
    add_column :coin_infos, :developer, :string
  end
end
