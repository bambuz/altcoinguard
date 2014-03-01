class AddDeveloperAndWinwalletAndOsxwalletAndLinwalletAndTwitterToCoin < ActiveRecord::Migration
  def change
    add_column :coins, :developer, :string
    add_column :coins, :winwallet, :string
    add_column :coins, :osxwallet, :string
    add_column :coins, :linwallet, :string
    add_column :coins, :twitter, :string
  end
end
