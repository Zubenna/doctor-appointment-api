class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phonenumber
      t.string :specialty
      t.integer :years_of_experience
      t.string :picture
      t.string :location

      t.timestamps
    end
  end
end
