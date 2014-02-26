class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges do |t|
      t.string :name
      t.float :hashrate
      t.references :coin, index: true

      t.timestamps
    end
  end
end
