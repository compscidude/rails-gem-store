class AddAccmulativeToTransaction < ActiveRecord::Migration[5.0]
  def change
      add_column :transactions, :accumulative, :integer
  end
end
