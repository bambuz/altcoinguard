class AddFacebookAndGoogleplusAndLaunchtimeAndSourceAndNodesToCoin < ActiveRecord::Migration
  def change
    add_column :coins, :facebook, :string
    add_column :coins, :googleplus, :string
    add_column :coins, :launchtime, :datetime
    add_column :coins, :source, :string
    add_column :coins, :nodes, :text
  end
end
