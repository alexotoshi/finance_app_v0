class CreateTransactions < ActiveRecord::Migration[6.1]
  def change
    create_table :transactions do |t|
      t.string :merchant
      t.string :note
      t.decimal :price
      t.date :transaction_date
      t.boolean :food
      t.boolean :gas
      t.string :transaction_type

      t.timestamps
    end
  end
end
