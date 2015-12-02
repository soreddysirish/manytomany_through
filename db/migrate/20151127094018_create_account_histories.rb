class CreateAccountHistories < ActiveRecord::Migration
  def change
    create_table :account_histories do |t|
      t.integer :account_id
      t.integer :amount

      t.timestamps null: false
    end
  end
end
