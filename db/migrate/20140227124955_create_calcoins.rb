class CreateCalcoins < ActiveRecord::Migration
  def change
    create_table :calcoins do |t|
      t.string :name
      t.datetime :launchdate

      t.timestamps
    end
  end
end
