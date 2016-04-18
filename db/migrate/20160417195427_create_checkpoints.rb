class CreateCheckpoints < ActiveRecord::Migration
  def change
    create_table :checkpoints do |t|
      t.time :arrival
      t.time :departure
      t.date :date
      t.integer :barcode

      t.timestamps null: false
    end
  end
end
