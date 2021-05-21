class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.bigint :doctor_id
      t.bigint :patient_id

      t.timestamps
    end
  end
end
