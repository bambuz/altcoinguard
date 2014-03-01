class AddTimeperroundAndActualblockAndAnnouncementAndOfficialtextToCoin < ActiveRecord::Migration
  def change
    add_column :coins, :timeperround, :datetime
    add_column :coins, :actualblock, :integer
    add_column :coins, :announcement, :text
    add_column :coins, :officialtext, :text
  end
end
