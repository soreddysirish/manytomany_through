class CreateAppoinments < ActiveRecord::Migration
  def change
    create_table :appoinments do |t|
      t.integer :docter_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
