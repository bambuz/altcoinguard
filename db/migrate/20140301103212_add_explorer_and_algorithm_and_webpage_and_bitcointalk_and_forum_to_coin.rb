class AddExplorerAndAlgorithmAndWebpageAndBitcointalkAndForumToCoin < ActiveRecord::Migration
  def change
    add_column :coins, :explorer, :string
    add_column :coins, :algorithm, :string
    add_column :coins, :webpage, :string
    add_column :coins, :bitcointalk, :string
    add_column :coins, :forum, :string
  end
end
