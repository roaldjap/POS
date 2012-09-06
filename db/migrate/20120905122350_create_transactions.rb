class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :transaction_date
      t.integer :customer_id
      t.integer :product_id
      t.timestamps
    end
  end
end
