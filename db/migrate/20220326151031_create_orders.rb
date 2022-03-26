class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :customer
      t.integer :phone_number
      t.date :date

      t.timestamps
    end
  end
end
