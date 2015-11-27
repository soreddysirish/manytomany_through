class CreateDocters < ActiveRecord::Migration
  def change
    create_table :docters do |t|
      t.string :name
      t.string :address

      t.timestamps null: false
    end
  end
end
