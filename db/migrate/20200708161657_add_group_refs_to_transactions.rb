class AddGroupRefsToTransactions < ActiveRecord::Migration[6.0]
  def change
    add_reference :transactions, :group, null: true, foreign_key: true
  end
end
