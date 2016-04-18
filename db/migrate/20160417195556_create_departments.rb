class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.time :arrival_time
      t.time :departure_time
      t.integer :arrival_tolerance
      t.integer :departure_tolerance
      t.integer :working_hours
      t.time :lunch_start
      t.time :lunch_finish

      t.timestamps null: false
    end
  end
end
