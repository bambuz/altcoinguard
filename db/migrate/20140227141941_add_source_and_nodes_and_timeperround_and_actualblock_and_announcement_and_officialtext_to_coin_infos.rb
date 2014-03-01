class AddSourceAndNodesAndTimeperroundAndActualblockAndAnnouncementAndOfficialtextToCoinInfos < ActiveRecord::Migration
  def change
    add_column :coin_infos, :source, :string
    add_column :coin_infos, :nodes, :text
    add_column :coin_infos, :timeperround, :datetime
    add_column :coin_infos, :actualblock, :integer
    add_column :coin_infos, :announcement, :text
    add_column :coin_infos, :officialtext, :text
  end
end
