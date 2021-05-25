class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :full_name
      t.string :username
      t.string :phone_number
      t.string :email
      t.string :address
      t.string :password_digest

      t.timestamps
    end
  end
end
