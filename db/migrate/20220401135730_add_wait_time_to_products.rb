class AddWaitTimeToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :wait_time, :integer
  end
end
