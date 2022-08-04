class AddColumnToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :amount, :integer
  end
end
