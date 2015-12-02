class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :next_appointment
      t.string :reason_for_visit

      t.timestamps null: false
    end
  end
end
