class RemovecolumnsfromTransactions < ActiveRecord::Migration[5.0]
  def change
      remove_column :transactions, :trans_type
      remove_column :transactions, :gem
      remove_column :items, :transaction_id
      add_reference :transactions, :item, index: true
  end
end

