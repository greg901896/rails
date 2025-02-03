class CreateTotals < ActiveRecord::Migration[7.0]
  def change
    create_table :totals do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
