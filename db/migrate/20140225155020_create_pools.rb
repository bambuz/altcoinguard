class CreatePools < ActiveRecord::Migration
  def change
    create_table :pools do |t|
      t.string :name
      t.string :link
      t.references :coin, index: true

      t.timestamps
    end
  end
end
