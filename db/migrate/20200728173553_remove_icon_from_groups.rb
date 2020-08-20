class RemoveIconFromGroups < ActiveRecord::Migration[6.0]
  def change
    change_table :groups do |t|
      t.remove :icon
    end
  end
end
