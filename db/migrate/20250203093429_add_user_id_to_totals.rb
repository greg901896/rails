class AddUserIdToTotals < ActiveRecord::Migration[7.0]
  def change
    add_column :totals, :user_id, :integer
    add_index :totals, :user_id
  end
end
