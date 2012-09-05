class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.date :birthdate
      t.string :gender

      t.timestamps
    end
  end
end
