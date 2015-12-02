class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :date
      t.string :pet
      t.string :customer
      t.boolean :reminder
      t.string :reason_for_visit

      t.timestamps null: false
    end
  end
end
