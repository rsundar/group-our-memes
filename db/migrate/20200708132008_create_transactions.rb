class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.string :name
      t.string :about
      t.integer :rating

      t.timestamps
    end
  end
end
