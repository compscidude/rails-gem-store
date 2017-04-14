class AddPriceToItem < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :price, :integer, :null => true
  end
end
