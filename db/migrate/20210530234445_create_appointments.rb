class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.datetime :appointment_date
      t.string :location
      t.string :doctor_name

      t.timestamps
    end
  end
end
