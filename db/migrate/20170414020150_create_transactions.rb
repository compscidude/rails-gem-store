class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.references :user, foreign_key: true
      t.string :type
      t.integer :gem

      t.timestamps
    end
  end
end
