class CreateNewgregs < ActiveRecord::Migration[7.0]
  def change
    create_table :newgregs do |t|
      t.string :first_name
      t.string :last_name
      t.string :emails
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
