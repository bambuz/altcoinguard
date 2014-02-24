class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :name
      t.string :thumbnail

      t.timestamps
    end
  end
end
