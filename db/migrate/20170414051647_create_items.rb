class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :gem
      t.references :transaction, foreign_key: true

      t.timestamps
    end
  end
end
